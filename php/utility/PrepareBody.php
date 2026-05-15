<?php
declare(strict_types=1);

// ExtinctAnimals SDK utility: prepare_body

class ExtinctAnimalsPrepareBody
{
    public static function call(ExtinctAnimalsContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
