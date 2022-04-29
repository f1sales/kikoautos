require "kikoautos/version"

require "f1sales_custom/source"
require "f1sales_custom/hooks"
require "f1sales_helpers"

module Kikoautos
  class Error < StandardError; end
  class F1SalesCustom::Hooks::Lead

    BIKE_PRODUCTS = [
      'bigtrail',
      'bmw gs',
      'cg',
      'city',
      'custom',
      'ducati',
      'enduro',
      'harley',
      'honda',
      'kawasaki',
      'ktm',
      'moto',
      'naked',
      'pcx',
      'royal enfield',
      'scooter',
      'sport',
      'street',
      'suzuki',
      'trail',
      'triumph',
      'yamaha'
    ]

    def self.switch_source(lead)
      if BIKE_PRODUCTS.select { |w| lead.product.name.downcase.include?(w) || (lead.message || '').downcase.include?(w) }.count.positive?
        "#{lead.source.name} - Motos"
      else
        lead.source.name
      end
    end
  end
end
