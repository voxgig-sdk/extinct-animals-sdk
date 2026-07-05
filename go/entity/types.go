// Typed models for the ExtinctAnimals SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import "encoding/json"

// Animal is the typed data model for the animal entity.
type Animal struct {
	BinomialName string `json:"binomial_name"`
	CommonName *string `json:"common_name,omitempty"`
	Data []any `json:"data"`
	ImageSrc *string `json:"image_src,omitempty"`
	LastRecord *string `json:"last_record,omitempty"`
	Location *string `json:"location,omitempty"`
	ShortDesc *string `json:"short_desc,omitempty"`
	Status string `json:"status"`
	WikiLink *string `json:"wiki_link,omitempty"`
}

// AnimalLoadMatch is the typed request payload for Animal.LoadTyped.
type AnimalLoadMatch struct {
	Id int `json:"id"`
}

// AnimalListMatch is the typed request payload for Animal.ListTyped.
type AnimalListMatch struct {
	BinomialName *string `json:"binomial_name,omitempty"`
	CommonName *string `json:"common_name,omitempty"`
	Data *[]any `json:"data,omitempty"`
	ImageSrc *string `json:"image_src,omitempty"`
	LastRecord *string `json:"last_record,omitempty"`
	Location *string `json:"location,omitempty"`
	ShortDesc *string `json:"short_desc,omitempty"`
	Status *string `json:"status,omitempty"`
	WikiLink *string `json:"wiki_link,omitempty"`
}

// asMap turns a typed request/data struct into the map[string]any the
// runtime op pipeline consumes, honouring the json tags above.
func asMap(v any) map[string]any {
	out := map[string]any{}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedFrom decodes a runtime value (a map[string]any produced by the op
// pipeline) into a typed model T via a JSON round-trip. On any error it
// returns the zero value of T; the op's own (value, error) tuple carries the
// real error.
func typedFrom[T any](v any) T {
	var out T
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedSliceFrom decodes a runtime list value ([]any of maps) into a typed
// slice []T via a JSON round-trip, for list ops.
func typedSliceFrom[T any](v any) []T {
	var out []T
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}
