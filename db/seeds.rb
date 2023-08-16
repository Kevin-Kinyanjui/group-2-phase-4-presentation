# # Clear existing data
# Post.destroy_all

# # Create seed data for posts
# posts = [
#   {
#     title: "Introduction to Ruby on Rails",
#     content: "Ruby on Rails is a web development framework...",
#     views: 150,
#     likes: 25,
#     category: "Technology",
#     status: "Published",
#     slug: "introduction-to-ruby-on-rails",
#     published_at: Time.now
#   },
#   {
#     title: "Exploring Exotic Destinations",
#     content: "Discover the most exotic travel destinations...",
#     views: 320,
#     likes: 45,
#     category: "Travel",
#     status: "Published",
#     slug: "exploring-exotic-destinations",
#     published_at: Time.now
#   },
#   {
#     title: "The Art of Cooking",
#     content: "Master the art of cooking with these delicious recipes...",
#     views: 220,
#     likes: 30,
#     category: "Food",
#     status: "Draft",
#     slug: "the-art-of-cooking",
#     published_at: nil
#   }
# ]

# posts.each do |post_attributes|
#   Post.create(post_attributes)
# end


# Presence validation
{
  "post": {
    "title": "",
    "content": "Some content",
    "category": "Fiction"
  }
}
// Error Response: { "title": ["can't be blank"] }

# Length validation
{
  "post": {
    "title": "Short",
    "content": "Some content",
    "category": "Non-Fiction"
  }
}
// Error Response: { "title": ["is too short (minimum is 6 characters)"] }

# Numericality validation
{
  "post": {
    "title": "Title",
    "content": "Some content",
    "likes": "abc",
    "category": "Fiction"
  }
}
// Error Response: { "likes": ["is not a number"] }

# Inclusion validation
{
  "post": {
    "title": "Title",
    "content": "Some content",
    "category": "Action"
  }
}
// Error Response: { "category": ["is not included in the list"] }

# Exclusion validation
{
  "post": {
    "title": "Title",
    "content": "Some content",
    "status": "Draft",
    "category": "Fiction"
  }
}
// Error Response: { "status": ["is reserved"] }

# Format validation
{
  "post": {
    "title": "123",
    "content": "Some content",
    "category": "Non-Fiction"
  }
}
// Error Response: { "title": ["Only letters allowed"] }

# Uniqueness validation
{
  "post": {
    "title": "Title",
    "content": "Some content",
    "slug": "introduction-to-ruby-on-rails",
    "category": "Fiction"
  }
}
// Error Response: { "slug": ["has already been taken"] }

# Custom validation method
{
  "post": {
    "title": "Title",
    "content": "Some content",
    "category": "Fiction"
  }
}
// Error Response: { "base": ["Custom validation failed"] }

# Conditional validation
{
  "post": {
    "title": "Title",
    "content": "Some content",
    "category": "Fiction"
  }
}
// Error Response: { "published_at": ["can't be blank"] }

# Confirmation validation
{
  "post": {
    "title": "Title",
    "content": "Some content",
    "password_confirmation": "password",
    "category": "Fiction"
  }
}
// Error Response: { "password_confirmation": ["can't be blank"] }

# Acceptance validation
{
  "post": {
    "title": "Title",
    "content": "Some content",
    "category": "Fiction",
    "terms_of_service": false
  }
}
// Error Response: { "terms_of_service": ["must be accepted"] }


# Complete
{
  "post": {
    "title": "My New Post",
    "content": "This is the content of my new post.",
    "views": 0,
    "likes": 0,
    "category": "Technology",
    "status": "Draft",
    "slug": "my-new-post",
    "published_at": null
  }
}
