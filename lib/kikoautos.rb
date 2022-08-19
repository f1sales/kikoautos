require 'kikoautos/version'
require 'f1sales_custom/source'
require 'f1sales_custom/hooks'
require 'f1sales_helpers'

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
    ].freeze

    def self.switch_source(lead)
      product_name_down = lead.product.name.downcase
      source_name = lead.source.name
      if BIKE_PRODUCTS.detect { |w| product_name_down.include?(w) || (lead.message || '').downcase.include?(w) }
        "#{source_name} - Motos"
      elsif product_name_down.include?('bmw' && 'gs')
        "#{source_name} - Motos"
      else
        source_name
      end
    end
  end
end
