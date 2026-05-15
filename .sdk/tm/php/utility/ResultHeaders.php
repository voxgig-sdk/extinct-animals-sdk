<?php
declare(strict_types=1);

// ExtinctAnimals SDK utility: result_headers

class ExtinctAnimalsResultHeaders
{
    public static function call(ExtinctAnimalsContext $ctx): ?ExtinctAnimalsResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
