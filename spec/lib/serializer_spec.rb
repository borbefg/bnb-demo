RSpec.describe Serializer do
  describe '.flatten' do
    subject { described_class.flatten(input) }

    let(:expectation) do
      { foo: 'foo', bar_baz: 'baz', biz: 1 }.stringify_keys
    end

    let(:input) do
      { foo: 'foo', bar: { baz: 'baz' }, biz: [1, 1] }
    end

    it { is_expected.to eq(expectation) }
  end
end
