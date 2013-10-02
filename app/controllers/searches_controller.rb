class SearchesController < ApplicationController
  def search
    vin = vin_squish(params[:vin])
    res = HTTParty.get("https://api.edmunds.com/api/vehicle/v2/squishvins/#{vin}/?fmt=json&api_key=#{ENV['edmunds_key']}").to_hash
    if res
      vehicle_attributes = res
    end

    @new_search = Search.new( vin: vin, vehicle_attributes: vehicle_attributes )
    binding.pry
  end

  private

  # makes a squishvin
  # http://developer.edmunds.com/api-documentation/vehicle/spec_squishvin/v1/
  def vin_squish(vin_num)
    vin = vin_num[0,11]
    vin.slice(0,8) + vin.slice(9,11)
  end

end
