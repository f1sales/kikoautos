require "kikoautos/version"
require "f1sales_custom/source"
require "f1sales_custom/hooks"
require "f1sales_helpers"

module Kikoautos
  class Error < StandardError; end
  class F1SalesCustom::Hooks::Lead

    BIKE_PRODUCTS = [
      'bigtrail',
      'cg',
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
      lead_product_name = lead.product.name.downcase
      if BIKE_PRODUCTS.detect{ |w| lead_product_name.include?(w) || (lead.message || '').downcase.include?(w) }
        "#{lead.source.name} - Motos"
      elsif lead_product_name.include?('bmw' && 'gs')
        "#{lead.source.name} - Motos"
      else
        lead.source.name
      end
    end
  end
end
