// Typed models for the ExtinctAnimals SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Animal {
  binomialName: string
  commonName?: string
  data: any[]
  imageSrc?: string
  lastRecord?: string
  location?: string
  shortDesc?: string
  status: string
  wikiLink?: string
}

export interface AnimalLoadMatch {
  id: number
}

export interface AnimalListMatch {
  binomialName?: string
  commonName?: string
  data?: any[]
  imageSrc?: string
  lastRecord?: string
  location?: string
  shortDesc?: string
  status?: string
  wikiLink?: string
}

