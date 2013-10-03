class Search < ActiveRecord::Base
  attr_reader :vin
  attr_accessor :vehicle_attributes, :vin

  # make magic methods to grab vehicle information
  def method_missing(method_name, *arguments, &block)
    if method_name.to_s =~ /vehicle_(.*)/
      begin
        self.vehicle_attributes.fetch($1).fetch('name')
      rescue KeyError
        super
      end
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('vehicle_') || super
  end
end
