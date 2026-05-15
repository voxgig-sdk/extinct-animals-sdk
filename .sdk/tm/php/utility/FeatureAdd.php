<?php
declare(strict_types=1);

// ExtinctAnimals SDK utility: feature_add

class ExtinctAnimalsFeatureAdd
{
    public static function call(ExtinctAnimalsContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
