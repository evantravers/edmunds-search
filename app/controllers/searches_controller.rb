class SearchesController < ApplicationController
  def search
    # makes a squishvin
    # http://developer.edmunds.com/api-documentation/vehicle/spec_squishvin/v1/
    binding.pry
    new_search = Search.new(vin_squish(params[:vin]))
    response = HTTParty.get("https://api.edmunds.com/api/vehicle/v2/squishvins/#{new_search.vin}/?fmt=json&api_key=#{ENV['edmunds_key']}")
    if response
      new_search.vehicle_attributes = response
    end
    if new_search.save
      render 'results'
    end
  end

  private

  # makes a squishvin
  # http://developer.edmunds.com/api-documentation/vehicle/spec_squishvin/v1/
  def vin_squish(vin_num)
    vin = vin_num[0,11]
    vin.slice(0,8) + vin.slice(9,11)
  end

end
