class Post
  attr_writer :title

  def print_title
    puts "The title of this post is #{@title}"
  end
end

class PostTwo
  def self.print_author
    puts "The author of all posts is Jimmy"
  end
end


pst = Post.new
pst.title = "Green Beans"
pst.print_title
PostTwo.print_author



# class Post
#   attr_writer :title

#   def self.author
#     "Jimmy"
#   end

#   def full_title
#     "#{@title} by #{class.author}"
#   end
# end

# pst = Post.new
# pst.title = "Delicious Ham"
# puts pst.full_title