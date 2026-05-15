# ExtinctAnimals SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

ExtinctAnimalsUtility.registrar = ->(u) {
  u.clean = ExtinctAnimalsUtilities::Clean
  u.done = ExtinctAnimalsUtilities::Done
  u.make_error = ExtinctAnimalsUtilities::MakeError
  u.feature_add = ExtinctAnimalsUtilities::FeatureAdd
  u.feature_hook = ExtinctAnimalsUtilities::FeatureHook
  u.feature_init = ExtinctAnimalsUtilities::FeatureInit
  u.fetcher = ExtinctAnimalsUtilities::Fetcher
  u.make_fetch_def = ExtinctAnimalsUtilities::MakeFetchDef
  u.make_context = ExtinctAnimalsUtilities::MakeContext
  u.make_options = ExtinctAnimalsUtilities::MakeOptions
  u.make_request = ExtinctAnimalsUtilities::MakeRequest
  u.make_response = ExtinctAnimalsUtilities::MakeResponse
  u.make_result = ExtinctAnimalsUtilities::MakeResult
  u.make_point = ExtinctAnimalsUtilities::MakePoint
  u.make_spec = ExtinctAnimalsUtilities::MakeSpec
  u.make_url = ExtinctAnimalsUtilities::MakeUrl
  u.param = ExtinctAnimalsUtilities::Param
  u.prepare_auth = ExtinctAnimalsUtilities::PrepareAuth
  u.prepare_body = ExtinctAnimalsUtilities::PrepareBody
  u.prepare_headers = ExtinctAnimalsUtilities::PrepareHeaders
  u.prepare_method = ExtinctAnimalsUtilities::PrepareMethod
  u.prepare_params = ExtinctAnimalsUtilities::PrepareParams
  u.prepare_path = ExtinctAnimalsUtilities::PreparePath
  u.prepare_query = ExtinctAnimalsUtilities::PrepareQuery
  u.result_basic = ExtinctAnimalsUtilities::ResultBasic
  u.result_body = ExtinctAnimalsUtilities::ResultBody
  u.result_headers = ExtinctAnimalsUtilities::ResultHeaders
  u.transform_request = ExtinctAnimalsUtilities::TransformRequest
  u.transform_response = ExtinctAnimalsUtilities::TransformResponse
}
