<?php
declare(strict_types=1);

// ExtinctAnimals SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class ExtinctAnimalsMakeContext
{
    public static function call(array $ctxmap, ?ExtinctAnimalsContext $basectx): ExtinctAnimalsContext
    {
        return new ExtinctAnimalsContext($ctxmap, $basectx);
    }
}
