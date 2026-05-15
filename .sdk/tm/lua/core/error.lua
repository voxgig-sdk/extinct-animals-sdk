-- ExtinctAnimals SDK error

local ExtinctAnimalsError = {}
ExtinctAnimalsError.__index = ExtinctAnimalsError


function ExtinctAnimalsError.new(code, msg, ctx)
  local self = setmetatable({}, ExtinctAnimalsError)
  self.is_sdk_error = true
  self.sdk = "ExtinctAnimals"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function ExtinctAnimalsError:error()
  return self.msg
end


function ExtinctAnimalsError:__tostring()
  return self.msg
end


return ExtinctAnimalsError
