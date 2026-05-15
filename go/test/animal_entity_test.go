package sdktest

import (
	"encoding/json"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	sdk "github.com/voxgig-sdk/extinct-animals-sdk"
	"github.com/voxgig-sdk/extinct-animals-sdk/core"

	vs "github.com/voxgig/struct"
)

func TestAnimalEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.Animal(nil)
		if ent == nil {
			t.Fatal("expected non-nil AnimalEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := animalBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"list", "load"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "animal." + _op, _mode); _shouldSkip {
				if _reason == "" {
					_reason = "skipped via sdk-test-control.json"
				}
				t.Skip(_reason)
				return
			}
		}
		// The basic flow consumes synthetic IDs from the fixture. In live mode
		// without an *_ENTID env override, those IDs hit the live API and 4xx.
		if setup.syntheticOnly {
			t.Skip("live entity test uses synthetic IDs from fixture — set EXTINCTANIMALS_TEST_ANIMAL_ENTID JSON to run live")
			return
		}
		client := setup.client

		// Bootstrap entity data from existing test data (no create step in flow).
		animalRef01DataRaw := vs.Items(core.ToMapAny(vs.GetPath("existing.animal", setup.data)))
		var animalRef01Data map[string]any
		if len(animalRef01DataRaw) > 0 {
			animalRef01Data = core.ToMapAny(animalRef01DataRaw[0][1])
		}
		// Discard guards against Go's unused-var check when the flow's steps
		// happen not to consume the bootstrap data (e.g. list-only flows).
		_ = animalRef01Data

		// LIST
		animalRef01Ent := client.Animal(nil)
		animalRef01Match := map[string]any{}

		animalRef01ListResult, err := animalRef01Ent.List(animalRef01Match, nil)
		if err != nil {
			t.Fatalf("list failed: %v", err)
		}
		_, animalRef01ListOk := animalRef01ListResult.([]any)
		if !animalRef01ListOk {
			t.Fatalf("expected list result to be an array, got %T", animalRef01ListResult)
		}

		// LOAD
		animalRef01MatchDt0 := map[string]any{}
		animalRef01DataDt0Loaded, err := animalRef01Ent.Load(animalRef01MatchDt0, nil)
		if err != nil {
			t.Fatalf("load failed: %v", err)
		}
		if animalRef01DataDt0Loaded == nil {
			t.Fatal("expected load result to be non-nil")
		}

	})
}

func animalBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "animal", "AnimalTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read animal test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse animal test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"animal01", "animal02", "animal03"},
		map[string]any{
			"`$PACK`": []any{"", map[string]any{
				"`$KEY`": "`$COPY`",
				"`$VAL`": []any{"`$FORMAT`", "upper", "`$COPY`"},
			}},
		},
	)

	// Detect ENTID env override before envOverride consumes it. When live
	// mode is on without a real override, the basic test runs against synthetic
	// IDs from the fixture and 4xx's. Surface this so the test can skip.
	entidEnvRaw := os.Getenv("EXTINCTANIMALS_TEST_ANIMAL_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"EXTINCTANIMALS_TEST_ANIMAL_ENTID": idmap,
		"EXTINCTANIMALS_TEST_LIVE":      "FALSE",
		"EXTINCTANIMALS_TEST_EXPLAIN":   "FALSE",
		"EXTINCTANIMALS_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["EXTINCTANIMALS_TEST_ANIMAL_ENTID"])
	if idmapResolved == nil {
		idmapResolved = core.ToMapAny(idmap)
	}

	if env["EXTINCTANIMALS_TEST_LIVE"] == "TRUE" {
		mergedOpts := vs.Merge([]any{
			map[string]any{
				"apikey": env["EXTINCTANIMALS_APIKEY"],
			},
			extra,
		})
		client = sdk.NewExtinctAnimalsSDK(core.ToMapAny(mergedOpts))
	}

	live := env["EXTINCTANIMALS_TEST_LIVE"] == "TRUE"
	return &entityTestSetup{
		client:        client,
		data:          entityData,
		idmap:         idmapResolved,
		env:           env,
		explain:       env["EXTINCTANIMALS_TEST_EXPLAIN"] == "TRUE",
		live:          live,
		syntheticOnly: live && !idmapOverridden,
		now:           time.Now().UnixMilli(),
	}
}
