require "faraday"
require "json"
require_relative "ecologi/version"

module Ecologi
  class Error < StandardError; end

  autoload :Client, "ecologi/client"
  autoload :Resource, "ecologi/resource"
  autoload :Object, "ecologi/object"

  autoload :TreesResource, "ecologi/resources/trees"
  autoload :CarbonOffsetsResource, "ecologi/resources/carbon_offsets"
  autoload :ReportingResource, "ecologi/resources/reporting"

  autoload :TreePurchase, "ecologi/objects/tree_purchase"
  autoload :CarbonOffsetPurchase, "ecologi/objects/carbon_offset_purchase"
  autoload :Report, "ecologi/objects/report"

end
