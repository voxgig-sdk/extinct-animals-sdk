# Typed models for the ExtinctAnimals SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.
#
# These are TypedDicts, not dataclasses: the SDK ops return/accept plain dicts
# at runtime, and a TypedDict IS a dict shape, so the types match the runtime.
# Optional (req:false) keys are modelled as TypedDict key-optionality
# (total=False), split into a required base + total=False subclass when a type
# has both required and optional keys.

from __future__ import annotations

from typing import TypedDict, Any


class AnimalRequired(TypedDict):
    binomial_name: str
    data: list
    status: str


class Animal(AnimalRequired, total=False):
    common_name: str
    image_src: str
    last_record: str
    location: str
    short_desc: str
    wiki_link: str


class AnimalLoadMatch(TypedDict):
    id: int


class AnimalListMatch(TypedDict, total=False):
    binomial_name: str
    common_name: str
    data: list
    image_src: str
    last_record: str
    location: str
    short_desc: str
    status: str
    wiki_link: str
