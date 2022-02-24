module Ecologi
  class CarbonOffsetsResource < Resource
    
    def purchase(number:, units:)
      response = post_request("impact/carbon", body: {number: number, units: units})
      CarbonOffsetPurchase.new response.body
    end

  end
end
