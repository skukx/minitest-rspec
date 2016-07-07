require 'spec_helper'

module MinitestAndRspec
  describe Post do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :message }
    it { is_expected.to respond_to :votes }

    subject do
      Post.new name: name, message: message
    end

    let(:name) { 'John Doe' }
    let(:message) { 'Hello World' }

    its(:name) { is_expected.to eql name }
    its(:message) { is_expected.to eql message }

    context 'When up voted' do
      before do
        subject.up_vote
        subject.up_vote
      end

      its(:votes) { is_expected.to eql 2 }
    end

    context 'When down voted' do
      before do
        subject.down_vote
      end

      its(:votes) { is_expected.to eql -1 }
    end
  end
end
