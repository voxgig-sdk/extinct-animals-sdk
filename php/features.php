<?php
declare(strict_types=1);

// ExtinctAnimals SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class ExtinctAnimalsFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new ExtinctAnimalsBaseFeature();
            case "test":
                return new ExtinctAnimalsTestFeature();
            default:
                return new ExtinctAnimalsBaseFeature();
        }
    }
}
