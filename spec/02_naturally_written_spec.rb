RSpec.context 'naturally written spec' do
  before :each do
    Timecop.freeze
  end

  after :each do
    Timecop.return
  end

  subject do
    Time.now
  end

  let :time do
    Time.now
  end

  it { expect(subject).to eq(time) }
end
