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
# @!attribute [rw] binomial_name
#   @return [String]
#
# @!attribute [rw] common_name
#   @return [String, nil]
#
# @!attribute [rw] data
#   @return [Array]
#
# @!attribute [rw] image_src
#   @return [String, nil]
#
# @!attribute [rw] last_record
#   @return [String, nil]
#
# @!attribute [rw] location
#   @return [String, nil]
#
# @!attribute [rw] short_desc
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String]
#
# @!attribute [rw] wiki_link
#   @return [String, nil]
Animal = Struct.new(
  :binomial_name,
  :common_name,
  :data,
  :image_src,
  :last_record,
  :location,
  :short_desc,
  :status,
  :wiki_link,
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
# @!attribute [rw] binomial_name
#   @return [String, nil]
#
# @!attribute [rw] common_name
#   @return [String, nil]
#
# @!attribute [rw] data
#   @return [Array, nil]
#
# @!attribute [rw] image_src
#   @return [String, nil]
#
# @!attribute [rw] last_record
#   @return [String, nil]
#
# @!attribute [rw] location
#   @return [String, nil]
#
# @!attribute [rw] short_desc
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] wiki_link
#   @return [String, nil]
AnimalListMatch = Struct.new(
  :binomial_name,
  :common_name,
  :data,
  :image_src,
  :last_record,
  :location,
  :short_desc,
  :status,
  :wiki_link,
  keyword_init: true
)

