# Typed models for the ExtinctAnimals SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class Animal:
    binomial_name: str
    data: list
    status: str
    common_name: Optional[str] = None
    image_src: Optional[str] = None
    last_record: Optional[str] = None
    location: Optional[str] = None
    short_desc: Optional[str] = None
    wiki_link: Optional[str] = None


@dataclass
class AnimalLoadMatch:
    id: int


@dataclass
class AnimalListMatch:
    binomial_name: Optional[str] = None
    common_name: Optional[str] = None
    data: Optional[list] = None
    image_src: Optional[str] = None
    last_record: Optional[str] = None
    location: Optional[str] = None
    short_desc: Optional[str] = None
    status: Optional[str] = None
    wiki_link: Optional[str] = None

