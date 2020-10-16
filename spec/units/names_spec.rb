require './app/models/names.rb'

describe Name do
  subject(:names) { Name.new(@names_text) }

  before do
    @names_text = "Ben\nArabella\nMaiara\nKrzysztof\nBeca\nEmily\nCam"
    @names_list = ["Ben", "Arabella", "Maiara", "Krzysztof", "Beca", "Emily", "Cam"]
  end



  context '#initialize' do

    it 'Initiates with instance Var for form names' do
      expect(names.names_text).to eq @names_text
    end

  end

  context '#create_list' do
    it 'separates text into array of names' do
      expect(names.create_list).to eq @names_list
    end
  end

  context '#pick_name' do
    it 'returns random name from list' do
      names.create_list
      srand(2)
      expect(names.pick_name).to eq "Ben"
    end
  end
end
