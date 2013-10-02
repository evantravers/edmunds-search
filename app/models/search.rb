class Search < ActiveRecord::Base
  attr_reader :vin
  attr_accessor :vehicle_attributes, :vin
end
