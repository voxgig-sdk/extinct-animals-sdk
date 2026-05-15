# ExtinctAnimals SDK utility: make_context
require_relative '../core/context'
module ExtinctAnimalsUtilities
  MakeContext = ->(ctxmap, basectx) {
    ExtinctAnimalsContext.new(ctxmap, basectx)
  }
end
