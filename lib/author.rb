class Author
  attr_accessor :name

  @@posts = []

  def initialize(name=nil)
       @name = name
       @posts = []
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@posts << post
  end

  def posts
    @posts
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@posts << post
  end

    def self.post_count
      @@posts.length
    end



end