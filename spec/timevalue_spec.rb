require_relative '../config/environment.rb'

describe 'timevalue' do
  it 'should be initialized with 0 as defaults' do
    time_value = TimeValue.new()
    expect(time_value.n).to eq(0)
    expect(time_value.i).to eq(0)
    expect(time_value.pv).to eq(0)
    expect(time_value.pmt).to eq(0)
    expect(time_value.fv).to eq(0)
  end

  let(:time_value) { TimeValue.new() }
  it 'should calculate number of periods correctly' do
    time_value.i = 8
    time_value.pv = 0
    time_value.pmt = -100
    time_value.fv = 5000
    expect(time_value.calc_n).to eq(21)
  end

  it 'should calculate present value correctly' do
      time_value.n = 5
      time_value.i = 6
      time_value.pmt = -2_500
      time_value.fv = -25_000
      expect(time_value.calc_pv).to eq(29_212.36)
  end

  it 'should calculate payments correctly' do
    time_value.n = 25
    time_value.i = 8
    time_value.pv = -500_000
    time_value.fv = -100_000
    expect(time_value.calc_pmt).to eq(48_207.27)
  end

  it 'should calculate future value correctly' do
    #$10,000 now, plus $100/month = $149_217.62
    time_value.n = 20 * 12
    time_value.i = 10.0 / 12
    time_value.pv = -10_000
    time_value.pmt = -100
    expect(time_value.calc_fv).to eq(149_217.62)
  end
end