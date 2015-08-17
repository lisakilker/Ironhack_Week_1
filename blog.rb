
class Blog
	def initialize
		@container = []
	end

	def create_front_page
		post.sort_by {|post| post.date}
	end

	def publish_front_page
	end

	def show
		@container.each do |post|
			puts post.title
			puts post.date
			puts post.text
		end
	end

	def push(post)
		@container << post
	end
end

class Post
	attr_accessor :title
	attr_accessor :date
	attr_accessor :text
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end
end

post1 = Post.new("post 1", 23, "This is my first Post")
puts post1

post2 = Post.new("post 2", 4, "This is my second Post")
puts post2

post3 = Post.new("post 3", 2, "This is my third Post")
puts post3

my_blog = Blog.new

my_blog.push(post1)
my_blog.push(post2)
my_blog.push(post3)
my_blog.show




