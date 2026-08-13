# frozen_string_literal: true

# Typed models for the ExtinctAnimals SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Animal entity data model.
#
# @!attribute [rw] binomialName
#   @return [String]
#
# @!attribute [rw] commonName
#   @return [String, nil]
#
# @!attribute [rw] data
#   @return [Array]
#
# @!attribute [rw] imageSrc
#   @return [String, nil]
#
# @!attribute [rw] lastRecord
#   @return [String, nil]
#
# @!attribute [rw] location
#   @return [String, nil]
#
# @!attribute [rw] shortDesc
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String]
#
# @!attribute [rw] wikiLink
#   @return [String, nil]
Animal = Struct.new(
  :binomialName,
  :commonName,
  :data,
  :imageSrc,
  :lastRecord,
  :location,
  :shortDesc,
  :status,
  :wikiLink,
  keyword_init: true
)

# Request payload for Animal#load.
#
# @!attribute [rw] id
#   @return [Integer]
AnimalLoadMatch = Struct.new(
  :id,
  keyword_init: true
)

# Request payload for Animal#list.
#
# @!attribute [rw] binomialName
#   @return [String, nil]
#
# @!attribute [rw] commonName
#   @return [String, nil]
#
# @!attribute [rw] data
#   @return [Array, nil]
#
# @!attribute [rw] imageSrc
#   @return [String, nil]
#
# @!attribute [rw] lastRecord
#   @return [String, nil]
#
# @!attribute [rw] location
#   @return [String, nil]
#
# @!attribute [rw] shortDesc
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] wikiLink
#   @return [String, nil]
AnimalListMatch = Struct.new(
  :binomialName,
  :commonName,
  :data,
  :imageSrc,
  :lastRecord,
  :location,
  :shortDesc,
  :status,
  :wikiLink,
  keyword_init: true
)

