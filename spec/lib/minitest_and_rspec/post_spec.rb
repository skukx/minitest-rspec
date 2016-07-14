require 'spec_helper'

module MinitestAndRspec
  describe Post do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :message }
    it { is_expected.to respond_to :votes }
    it { is_expected.to respond_to :up_vote }
    it { is_expected.to respond_to :down_vote }

    subject do
      FactoryGirl.build(:post, name: name, message: message, votes: votes)
    end

    let(:name) { 'John Doe' }
    let(:message) { 'Hello World' }
    let(:votes) { 5 }
    its(:name) { is_expected.to eql name }
    its(:message) { is_expected.to eql message }
    its(:votes) { is_expected.to eql 5 }

    context 'When up voted' do
      before do
        subject.up_vote
        subject.up_vote
      end

      its(:votes) { is_expected.to eql 7 }
    end

    context 'When down voted' do
      before do
        subject.down_vote
      end

      its(:votes) { is_expected.to eql 4 }
    end
  end
end
