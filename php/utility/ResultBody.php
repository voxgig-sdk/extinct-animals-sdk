<?php
declare(strict_types=1);

// ExtinctAnimals SDK utility: result_body

class ExtinctAnimalsResultBody
{
    public static function call(ExtinctAnimalsContext $ctx): ?ExtinctAnimalsResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
