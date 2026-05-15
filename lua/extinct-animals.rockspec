package = "voxgig-sdk-extinct-animals"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/extinct-animals-sdk.git"
}
description = {
  summary = "ExtinctAnimals SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["extinct-animals_sdk"] = "extinct-animals_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
