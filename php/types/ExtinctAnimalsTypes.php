<?php
declare(strict_types=1);

// Typed models for the ExtinctAnimals SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Animal entity data model. */
class Animal
{
    public string $binomial_name;
    public ?string $common_name = null;
    public array $data;
    public ?string $image_src = null;
    public ?string $last_record = null;
    public ?string $location = null;
    public ?string $short_desc = null;
    public string $status;
    public ?string $wiki_link = null;
}

/** Request payload for Animal#load. */
class AnimalLoadMatch
{
    public int $id;
}

/** Request payload for Animal#list. */
class AnimalListMatch
{
    public ?string $binomial_name = null;
    public ?string $common_name = null;
    public ?array $data = null;
    public ?string $image_src = null;
    public ?string $last_record = null;
    public ?string $location = null;
    public ?string $short_desc = null;
    public ?string $status = null;
    public ?string $wiki_link = null;
}

