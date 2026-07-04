// Typed models for the ExtinctAnimals SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Animal {
  binomial_name: string
  common_name?: string
  data: any[]
  image_src?: string
  last_record?: string
  location?: string
  short_desc?: string
  status: string
  wiki_link?: string
}

export interface AnimalLoadMatch {
  id: number
}

export type AnimalListMatch = Partial<Animal>

