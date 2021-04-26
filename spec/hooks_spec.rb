
require File.expand_path '../spec_helper.rb', __FILE__
require 'ostruct'
require "f1sales_custom/hooks"

RSpec.describe F1SalesCustom::Hooks::Lead do

  context 'when has some moto info' do
    let(:source_name) { 'myHonda' }

    let(:source) do
      source = OpenStruct.new
      source.name = source_name
      source
    end

    let(:customer) do
      customer = OpenStruct.new
      customer.name = 'Marcio'
      customer.phone = '1198788899'
      customer.email = 'marcio@f1sales.com.br'

      customer
    end

      let(:product) do
        product = OpenStruct.new
        product.name = 'Form PWR3601'

        product
      end


    let(:lead) do
      lead = OpenStruct.new
      lead.message = 'como_deseja_ser_contatado?: e-mail: escolha_a_unidade_savol_kia: savol_kia_santo_andré'
      lead.source = source
      lead.customer = customer
      lead.product = product

      lead
    end

    context 'when moto is on message' do
      let(:lead) do
        lead = OpenStruct.new
        lead.message = 'Tags: scooter, honda, top'
        lead.source = source
        lead.customer = customer
        lead.product = product

        lead
      end

      it 'returns source name with moto' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains harley' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Harley-davidson Street glide PWR3601'

        product
      end

      it 'returns source name with moto' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains Triumph' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Triumph Tiger 1.200 Explorer'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains HONDA ADV' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'HONDA ADV III0000'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
  end
end
