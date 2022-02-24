module Ecologi
  class ReportingResource < Resource
    
    def total_impact(username:)
      response = get_request("users/#{username}/impact")
      Report.new response.body
    end

    def total_trees(username:)
      response = get_request("users/#{username}/trees")
      Report.new response.body
    end

    def total_carbon(username:)
      response = get_request("users/#{username}/carbon-offset")
      Report.new response.body
    end

  end
end
