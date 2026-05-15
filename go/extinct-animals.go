package voxgigextinctanimalssdk

import (
	"github.com/voxgig-sdk/extinct-animals-sdk/core"
	"github.com/voxgig-sdk/extinct-animals-sdk/entity"
	"github.com/voxgig-sdk/extinct-animals-sdk/feature"
	_ "github.com/voxgig-sdk/extinct-animals-sdk/utility"
)

// Type aliases preserve external API.
type ExtinctAnimalsSDK = core.ExtinctAnimalsSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type ExtinctAnimalsEntity = core.ExtinctAnimalsEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type ExtinctAnimalsError = core.ExtinctAnimalsError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewAnimalEntityFunc = func(client *core.ExtinctAnimalsSDK, entopts map[string]any) core.ExtinctAnimalsEntity {
		return entity.NewAnimalEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewExtinctAnimalsSDK = core.NewExtinctAnimalsSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
