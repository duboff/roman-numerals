require 'roman'

describe 'roman_number' do
  context 'should convert ' do
    it '3 into III' do
      expect(roman_number(3)).to eq 'III'
    end
    it '4 into IV' do
      expect(roman_number(4)).to eq 'IV'
    end
    it '7 into VII' do
      expect(roman_number(7)).to eq 'VII'
    end
    it '9 into IX' do
      expect(roman_number(9)).to eq 'IX'
    end
    it '13 into XIII' do
      expect(roman_number(13)).to eq 'XIII'
    end
    it '14 into XIV' do
      expect(roman_number(14)).to eq 'XIV'
    end
    it '17 into XVII' do
      expect(roman_number(17)).to eq 'XVII'
    end
    it '49 into XLIX' do
      expect(roman_number(49)).to eq 'XLIX'
    end
    it '53 into LIII' do
      expect(roman_number(53)).to eq 'LIII'
    end
    it '54 into LIV' do
      expect(roman_number(54)).to eq 'LIV'
    end
    it '67 into LXVII' do
      expect(roman_number(67)).to eq 'LXVII'
    end
    it '79 into LXXIX' do
      expect(roman_number(79)).to eq 'LXXIX'
    end
    it '99 into XCIX' do
      expect(roman_number(99)).to eq 'XCIX'
    end
    it '799 into DCCXCIX' do
      expect(roman_number(799)).to eq 'DCCXCIX'
    end
    it '999 into CMXCIX' do
      expect(roman_number(999)).to eq 'CMXCIX'
    end
    it '3999 into MMMCMXCIX' do
      expect(roman_number(3999)).to eq 'MMMCMXCIX'
    end
  end
end