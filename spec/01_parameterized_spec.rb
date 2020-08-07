RSpec.context 'parameterized spec' do
  before :each do
    Timecop.freeze
  end

  after :each do
    Timecop.return
  end

  subject { Time.now }

  where(:time) do
    [
      [Time.now],
    ]
  end

  with_them do
    it { expect(subject).to eq(time) }
  end
end
