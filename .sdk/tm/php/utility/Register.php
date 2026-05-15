<?php
declare(strict_types=1);

// ExtinctAnimals SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

ExtinctAnimalsUtility::setRegistrar(function (ExtinctAnimalsUtility $u): void {
    $u->clean = [ExtinctAnimalsClean::class, 'call'];
    $u->done = [ExtinctAnimalsDone::class, 'call'];
    $u->make_error = [ExtinctAnimalsMakeError::class, 'call'];
    $u->feature_add = [ExtinctAnimalsFeatureAdd::class, 'call'];
    $u->feature_hook = [ExtinctAnimalsFeatureHook::class, 'call'];
    $u->feature_init = [ExtinctAnimalsFeatureInit::class, 'call'];
    $u->fetcher = [ExtinctAnimalsFetcher::class, 'call'];
    $u->make_fetch_def = [ExtinctAnimalsMakeFetchDef::class, 'call'];
    $u->make_context = [ExtinctAnimalsMakeContext::class, 'call'];
    $u->make_options = [ExtinctAnimalsMakeOptions::class, 'call'];
    $u->make_request = [ExtinctAnimalsMakeRequest::class, 'call'];
    $u->make_response = [ExtinctAnimalsMakeResponse::class, 'call'];
    $u->make_result = [ExtinctAnimalsMakeResult::class, 'call'];
    $u->make_point = [ExtinctAnimalsMakePoint::class, 'call'];
    $u->make_spec = [ExtinctAnimalsMakeSpec::class, 'call'];
    $u->make_url = [ExtinctAnimalsMakeUrl::class, 'call'];
    $u->param = [ExtinctAnimalsParam::class, 'call'];
    $u->prepare_auth = [ExtinctAnimalsPrepareAuth::class, 'call'];
    $u->prepare_body = [ExtinctAnimalsPrepareBody::class, 'call'];
    $u->prepare_headers = [ExtinctAnimalsPrepareHeaders::class, 'call'];
    $u->prepare_method = [ExtinctAnimalsPrepareMethod::class, 'call'];
    $u->prepare_params = [ExtinctAnimalsPrepareParams::class, 'call'];
    $u->prepare_path = [ExtinctAnimalsPreparePath::class, 'call'];
    $u->prepare_query = [ExtinctAnimalsPrepareQuery::class, 'call'];
    $u->result_basic = [ExtinctAnimalsResultBasic::class, 'call'];
    $u->result_body = [ExtinctAnimalsResultBody::class, 'call'];
    $u->result_headers = [ExtinctAnimalsResultHeaders::class, 'call'];
    $u->transform_request = [ExtinctAnimalsTransformRequest::class, 'call'];
    $u->transform_response = [ExtinctAnimalsTransformResponse::class, 'call'];
});
