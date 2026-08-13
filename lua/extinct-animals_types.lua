-- Typed models for the ExtinctAnimals SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class Animal
---@field binomialName string
---@field commonName? string
---@field data table
---@field imageSrc? string
---@field lastRecord? string
---@field location? string
---@field shortDesc? string
---@field status string
---@field wikiLink? string

---@class AnimalLoadMatch
---@field id number

---@class AnimalListMatch
---@field binomialName? string
---@field commonName? string
---@field data? table
---@field imageSrc? string
---@field lastRecord? string
---@field location? string
---@field shortDesc? string
---@field status? string
---@field wikiLink? string

local M = {}

return M
