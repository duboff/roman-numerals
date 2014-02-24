require 'roman'

describe 'roman' do
  it 'should convert 1 into I' do
    expect(roman_dict(1)).to eq 'I'
  end

  it 'should convert 5 into V' do
    expect(roman_dict(5)).to eq 'V'
  end

    it 'should convert 10 into X' do
    expect(roman_dict(10)).to eq 'X'
  end

    it 'should convert 5 into L' do
    expect(roman_dict(50)).to eq 'L'
  end

    it 'should convert 100 into C' do
    expect(roman_dict(100)).to eq 'C'
  end

    it 'should convert 500 into D' do
    expect(roman_dict(500)).to eq 'D'
  end

    it 'should convert 1000 into M' do
    expect(roman_dict(1000)).to eq 'M'
  end
end

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
    it '13 into XVII' do
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
    it '54 into XIV' do
      expect(roman_number(54)).to eq 'LIV'
    end
    it '67 into LXVII' do
      expect(roman_number(67)).to eq 'LXVII'
    end
    it '79 into XXIX' do
      expect(roman_number(79)).to eq 'LXXIX'
    end
    it '99 into XCIX' do
      expect(roman_number(99)).to eq 'XCIX'
    end
  end
end