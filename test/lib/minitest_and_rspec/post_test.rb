require 'test_helper'

class PostTest < Minitest::Test
  def setup
    @subject = MinitestAndRspec::Post.new name: 'John Doe', message: 'Hello World!'
  end

  def respond_to
    assert_respond_to(@subject, :name)
    assert_respond_to(@subject, :message)
    assert_respond_to(@subject, :votes)
    assert_respond_to(@subject, :up_vote)
    assert_respond_to(@subject, :down_vote)
  end

  def test_values
    assert_equal('John Doe', @subject.name)
    assert_equal('Hello World!', @subject.message)
    assert_equal(0, @subject.votes)
  end

  def test_up_votes
    @subject.up_vote
    @subject.up_vote

    assert_equal(2, @subject.votes)
  end

  def test_down_votes
    @subject.down_vote

    assert_equal(-1, @subject.votes)
  end
end
