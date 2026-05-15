package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewAnimalEntityFunc func(client *ExtinctAnimalsSDK, entopts map[string]any) ExtinctAnimalsEntity

