require "kikoautos/version"

require "f1sales_custom/source"
require "f1sales_custom/hooks"
require "f1sales_helpers"

module Kikoautos
  class Error < StandardError; end
  class F1SalesCustom::Hooks::Lead

    BIKE_PRODUCTS = %w[
      harley
      triumph
      moto
      yamaha
      street
    ]

    def self.switch_source(lead)
      if BIKE_PRODUCTS.select { |w| lead.product.name.downcase.include?(w) }.count.positive?
        "#{lead.source.name} - Motos"
      else
        lead.source.name
      end
    end
  end
end
