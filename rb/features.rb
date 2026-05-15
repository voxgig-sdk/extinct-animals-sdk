# ExtinctAnimals SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module ExtinctAnimalsFeatures
  def self.make_feature(name)
    case name
    when "base"
      ExtinctAnimalsBaseFeature.new
    when "test"
      ExtinctAnimalsTestFeature.new
    else
      ExtinctAnimalsBaseFeature.new
    end
  end
end
