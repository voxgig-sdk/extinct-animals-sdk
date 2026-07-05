-- Typed models for the ExtinctAnimals SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class Animal
---@field binomial_name string
---@field common_name? string
---@field data table
---@field image_src? string
---@field last_record? string
---@field location? string
---@field short_desc? string
---@field status string
---@field wiki_link? string

---@class AnimalLoadMatch
---@field id number

---@class AnimalListMatch
---@field binomial_name? string
---@field common_name? string
---@field data? table
---@field image_src? string
---@field last_record? string
---@field location? string
---@field short_desc? string
---@field status? string
---@field wiki_link? string

local M = {}

return M
