
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

    context 'when product contains Bigtrail' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Bigtrail'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains BMW GS' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'BMW GS'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains CG' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'CG'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains City' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'City'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains Custom' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Custom'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains Ducati' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Ducati'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains Ducati Multistrada' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Ducati Multistrada'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains Ducati Scrambler' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Ducati Scrambler'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end

    context 'when product contains Ducati Xdiavel' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Ducati Xdiavel'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Enduro' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Enduro'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Harley Davidson 48' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Harley Davidson 48'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Harley Davidson 883' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Harley Davidson 883'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Harley Davidson Breakout' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Harley Davidson Breakout'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Harley Davidson Fat Bob' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Harley Davidson Fat Bob'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Harley Davidson Fat Boy' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Harley Davidson Fat Boy'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Harley Davidson Forty Eigth' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Harley Davidson Forty Eigth'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Harley Davidson Heritage' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Harley Davidson Heritage'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Harley Davidson Softail' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Harley Davidson Softail'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Kawasaki' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Kawasaki'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Ktm' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'KTM'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Naked' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Naked'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains PCX' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'PCX'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Royal Enfield' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Royal Enfield'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Royal Enfield Continental GT' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Royal Enfield Continental GT'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Royal Enfield Himalayan' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Royal Enfield Himalayan'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Sport' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Sport'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Suzuki' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Suzuki'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Trail' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Trail'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Triumph Explorer' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Triumph Explorer'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Triumph T100' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Triumph T100'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
    
    context 'when product contains Triumph Triple Black' do
      let(:product) do
        product = OpenStruct.new
        product.name = 'Triumph Triple Black'

        product
      end

      it 'returns source name with motos' do
        expect(described_class.switch_source(lead)).to eq('myHonda - Motos')
      end
    end
  end
end
