class Post < ApplicationRecord
    # Presence validation: Ensures the title attribute is not blank.
    validates :title, presence: true
  
    # Length validation: Validates the length of the content attribute's value.
    validates :content, length: { minimum: 10, maximum: 5000 }
  
    # Numericality validation: Validates that the views attribute is a number.
    validates :views, numericality: true
  
    # Numericality validation with specific range:
    validates :likes, numericality: { greater_than: 0, less_than: 1000 }
  
    # Inclusion validation: Validates that the category attribute's value is in a specified list.
    validates :category, inclusion: { in: ['Technology', 'Travel', 'Food'] }
  
    # Exclusion validation: Validates that the status attribute's value is not in a specified list.
    validates :status, exclusion: { in: ['Draft', 'Archived'] }
  
    # Format validation: Validates the slug attribute's value using a regular expression.
    validates :slug, format: { with: /\A[a-z0-9\-]+\z/, message: "Only lowercase letters, digits, and hyphens allowed" }
  
    # Uniqueness validation: Ensures the slug attribute's value is unique in the database.
    validates :slug, uniqueness: true

    # Validate booleans
    validates :terms_of_service, acceptance: true
  
    # Custom validation method: Define a custom method for validation.
    validate :custom_validation
  
    private
  
    def custom_validation
      if views.present? && likes.present? && views < likes
        errors.add(:base, "Views cannot be less than likes")
      end
    end
  
  end
  