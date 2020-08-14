now = Time.now

RSpec.context 'parameterized spec' do
  before :each do
    Timecop.freeze(now)
  end

  after :each do
    Timecop.return
  end

  subject { now }

  where(:time) do
    [
      [now],
    ]
  end

  with_them do
    it { expect(subject).to eq(time) }
  end
end
