module MinitestAndRspec
  class Post
    attr_reader :name, :post, :votes

    def initialize(name, post)
      @name = name
      @post = post
    end

    def up_vote
      @votes += 1
    end

    def down_vote
      @votes -= 1
    end
  end
end
