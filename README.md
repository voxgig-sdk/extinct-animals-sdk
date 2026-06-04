# ExtinctAnimals SDK

Browse animals that went extinct during the Holocene (the last ~11,650 years), scraped from Wikipedia

> TypeScript, Python, PHP, Golang, Ruby, Lua SDKs, a CLI, an interactive REPL, and an MCP server for AI agents — all generated from one OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

## About Extinct Animals API

The Extinct Animals API is a small, open data service that catalogues roughly 804 animal species and subspecies known to have become extinct during the Holocene epoch. The dataset is scraped from Wikipedia by [cheba91](https://github.com/cheba91/extinct-api) and exposed as a tiny REST endpoint.

What you get from the API:

- A random animal record from `GET /api/v1/animal/` (optional `imageRequired` query parameter).
- A batch of N records from `GET /api/v1/animal/:number` (where `:number` is between 1 and 804).
- Each record carries `binomialName`, `commonName`, `location`, `wikiLink`, `lastRecord` (year), `imageSrc`, and `shortDesc`.

Operational notes: the API requires no authentication, has CORS enabled, and is hosted on a Heroku dyno that may sleep after periods of inactivity, so the first request after a quiet spell can be slow. Of the 804 entries, around 220 have no image, 30 are missing a common name, and 6 have no short description; all entries have a binomial name.

## Try it

**TypeScript**
```bash
npm install extinct-animals
```

**Python**
```bash
pip install extinct-animals-sdk
```

**PHP**
```bash
composer require voxgig/extinct-animals-sdk
```

**Golang**
```bash
go get github.com/voxgig-sdk/extinct-animals-sdk/go
```

**Ruby**
```bash
gem install extinct-animals-sdk
```

**Lua**
```bash
luarocks install extinct-animals-sdk
```

## 30-second quickstart

### TypeScript

```ts
import { ExtinctAnimalsSDK } from 'extinct-animals'

const client = new ExtinctAnimalsSDK({})

// List all animals
const animals = await client.Animal().list()
```

See the [TypeScript README](ts/README.md) for the
full guide, or scroll down for the same example in other languages.

## What's in the box

| Surface | Use it for | Path |
| --- | --- | --- |
| **SDK** (TypeScript, Python, PHP, Golang, Ruby, Lua) | App integration | `ts/` `py/` `php/` `go/` `rb/` `lua/` |
| **CLI** | Scripts, CI, ops, one-off API calls | `go-cli/` |
| **MCP server** | AI agents (Claude, Cursor, Cline) | `go-mcp/` |

## Use it from an AI agent (MCP)

The generated MCP server exposes every operation in this SDK as an
[MCP](https://modelcontextprotocol.io) tool that Claude, Cursor or Cline
can call directly. Build and register it:

```bash
cd go-mcp && go build -o extinct-animals-mcp .
```

Then add it to your agent's MCP config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "extinct-animals": {
      "command": "/abs/path/to/extinct-animals-mcp"
    }
  }
}
```

## Entities

The API exposes one entity:

| Entity | Description | API path |
| --- | --- | --- |
| **Animal** | An extinct animal species or subspecies, with Wikipedia-derived metadata such as binomial and common names, location, last-record year, image and short description; available at `GET /api/v1/animal/` (random) and `GET /api/v1/animal/:number` (batch, 1-804). | `/animal/` |

Each entity supports the following operations where available: **load**,
**list**, **create**, **update**, and **remove**.

## Quickstart in other languages

### Python

```python
from extinctanimals_sdk import ExtinctAnimalsSDK

client = ExtinctAnimalsSDK({})

# List all animals
animals, err = client.Animal(None).list(None, None)

# Load a specific animal
animal, err = client.Animal(None).load(
    {"id": "example_id"}, None
)
```

### PHP

```php
<?php
require_once 'extinctanimals_sdk.php';

$client = new ExtinctAnimalsSDK([]);

// List all animals
[$animals, $err] = $client->Animal(null)->list(null, null);

// Load a specific animal
[$animal, $err] = $client->Animal(null)->load(
    ["id" => "example_id"], null
);
```

### Golang

```go
import sdk "github.com/voxgig-sdk/extinct-animals-sdk/go"

client := sdk.NewExtinctAnimalsSDK(map[string]any{})

// List all animals
animals, err := client.Animal(nil).List(nil, nil)
```

### Ruby

```ruby
require_relative "ExtinctAnimals_sdk"

client = ExtinctAnimalsSDK.new({})

# List all animals
animals, err = client.Animal(nil).list(nil, nil)

# Load a specific animal
animal, err = client.Animal(nil).load(
  { "id" => "example_id" }, nil
)
```

### Lua

```lua
local sdk = require("extinct-animals_sdk")

local client = sdk.new({})

-- List all animals
local animals, err = client:Animal(nil):list(nil, nil)

-- Load a specific animal
local animal, err = client:Animal(nil):load(
  { id = "example_id" }, nil
)
```

## Unit testing in offline mode

Every SDK ships a test mode that swaps the HTTP transport for an
in-memory mock, so unit tests run offline.

### TypeScript

```ts
const client = ExtinctAnimalsSDK.test()
const result = await client.Animal().load({ id: 'test01' })
// result.ok === true, result.data contains mock data
```

### Python

```python
client = ExtinctAnimalsSDK.test(None, None)
result, err = client.Animal(None).load(
    {"id": "test01"}, None
)
```

### PHP

```php
$client = ExtinctAnimalsSDK::test(null, null);
[$result, $err] = $client->Animal(null)->load(
    ["id" => "test01"], null
);
```

### Golang

```go
client := sdk.TestSDK(nil, nil)
result, err := client.Animal(nil).Load(
    map[string]any{"id": "test01"}, nil,
)
```

### Ruby

```ruby
client = ExtinctAnimalsSDK.test(nil, nil)
result, err = client.Animal(nil).load(
  { "id" => "test01" }, nil
)
```

### Lua

```lua
local client = sdk.test(nil, nil)
local result, err = client:Animal(nil):load(
  { id = "test01" }, nil
)
```

## How it works

Every SDK call runs the same five-stage pipeline:

1. **Point** — resolve the API endpoint from the operation definition.
2. **Spec** — build the HTTP specification (URL, method, headers, body).
3. **Request** — send the HTTP request.
4. **Response** — receive and parse the response.
5. **Result** — extract the result data for the caller.

A feature hook fires at each stage (e.g. `PrePoint`, `PreSpec`,
`PreRequest`), so features can inspect or modify the pipeline without
forking the SDK.

### Features

| Feature | Purpose |
| --- | --- |
| **TestFeature** | In-memory mock transport for testing without a live server |

Pass custom features via the `extend` option at construction time.

### Direct and Prepare

For endpoints the entity model doesn't cover, use the low-level methods:

- **`direct(fetchargs)`** — build and send an HTTP request in one step.
- **`prepare(fetchargs)`** — build the request without sending it.

Both accept a map with `path`, `method`, `params`, `query`,
`headers`, and `body`. See the [How-to guides](#how-to-guides) below.

## How-to guides

### Make a direct API call

When the entity interface does not cover an endpoint, use `direct`:

**TypeScript:**
```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})
console.log(result.data)
```

**Python:**
```python
result, err = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})
```

**PHP:**
```php
[$result, $err] = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);
```

**Go:**
```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
```

**Ruby:**
```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
```

**Lua:**
```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
```

## Per-language documentation

- [TypeScript](ts/README.md)
- [Python](py/README.md)
- [PHP](php/README.md)
- [Golang](go/README.md)
- [Ruby](rb/README.md)
- [Lua](lua/README.md)

## Using the Extinct Animals API

- Upstream: [https://extinct-api.herokuapp.com/api/v1/animal](https://extinct-api.herokuapp.com/api/v1/animal)
- API docs: [https://cheba-apis.vercel.app/](https://cheba-apis.vercel.app/)

- The API itself ships without an explicit licence statement.
- Animal data and descriptions are scraped from Wikipedia, so the underlying text is generally available under Wikipedia's CC BY-SA terms.
- Image URLs point to Wikimedia Commons; consult each file page for its individual licence and attribution.
- Attribute Wikipedia (and image authors) when redistributing.

---

Generated from the Extinct Animals API OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).
