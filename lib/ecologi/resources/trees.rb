module Ecologi
  class TreesResource < Resource
    
    def purchase(number:, name: nil)
      response = post_request("impact/trees", body: {number: number, name: name})
      TreePurchase.new response.body
    end

  end
end
