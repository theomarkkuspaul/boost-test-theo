require_relative '../atbash.rb'

RSpec.describe Atbash do

  it 'is a class' do
    expect(Atbash.class).to eq(Class)
  end

end

RSpec.describe Atbash, "#decrypt" do

  context 'provided this cipher: \'zodvqukgwefbyitmrsplhacxnj\'' do

    it 'should decrypt \'dzs\' into understandable english' do

      cipher = Atbash.new('zodvqukgwefbyitmrsplhacxnj')
      encrypted = 'dzs'

      expect(cipher.decrypt(encrypted)).to eq('car')

    end

  end

  context 'provided this cipher: \'xipmuzfkbrlwotjancqgveshdy\'' do

    it 'should decrypt \'skd qj qucbjvq?\' into understandable english' do

      cipher = Atbash.new('xipmuzfkbrlwotjancqgveshdy')
      encrypted = 'skd qj qucbjvq?'

      expect(cipher.decrypt(encrypted)).to eq('why so serious?')

    end

  end

  context 'provided this cipher: \'oephjizkxdawubnytvfglqsrcm\'' do

    it 'should decrypt \'knlfgnb, sj koqj o yvnewju\' into understandable english' do

      cipher = Atbash.new('oephjizkxdawubnytvfglqsrcm')
      encrypted = 'knlfgnb, sj koqj o yvnewju'

      expect(cipher.decrypt(encrypted)).to eq('houston, we have a problem')

    end

  end

end