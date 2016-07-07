module MinitestAndRspec
  class Post
    attr_accessor :name, :message, :votes

    def initialize(args = {})
      @name = args[:name] || ''
      @message = args[:message] || ''
      @votes = 0
    end

    def up_vote
      @votes += 1
    end

    def down_vote
      @votes -= 1
    end
  end
end
