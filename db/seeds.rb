# Clear existing data
Post.destroy_all

# Create seed data for posts
posts = [
  {
    title: "Introduction to Ruby on Rails",
    content: "Ruby on Rails is a web development framework...",
    views: 150,
    likes: 25,
    category: "Technology",
    status: "Published",
    slug: "introduction-to-ruby-on-rails",
    published_at: Time.now
  },
  {
    title: "Exploring Exotic Destinations",
    content: "Discover the most exotic travel destinations...",
    views: 320,
    likes: 45,
    category: "Travel",
    status: "Published",
    slug: "exploring-exotic-destinations",
    published_at: Time.now
  },
  {
    title: "The Art of Cooking",
    content: "Master the art of cooking with these delicious recipes...",
    views: 220,
    likes: 30,
    category: "Food",
    status: "Draft",
    slug: "the-art-of-cooking",
    published_at: nil
  }
]

posts.each do |post_attributes|
  Post.create(post_attributes)
end
