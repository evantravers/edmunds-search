class Search < ActiveRecord::Base
  attr_reader :vin
  attr_accessor :vehicle_attributes

  def initialize(vin)
    super
    @vin = vin
  end
end
