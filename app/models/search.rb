class Search < ActiveRecord::Base
  attr_reader :vin
  attr_accessor :vehicle_attributes, :vin

  def vehicle_year
    @vehicle_attributes['years'].first['year']
  end

  def vehicle_description
    @vehicle_attributes['years'].first['styles'].first['name']
  end

  # make magic methods to grab vehicle information
  def method_missing(method_name, *arguments, &block)
    if method_name.to_s =~ /\Avehicle_(.*)/
      @vehicle_attributes.fetch($1).fetch('name')
    else
      super
    end
  rescue
    super
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('vehicle_') || super
  end
end
