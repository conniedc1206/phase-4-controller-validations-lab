class Author < ApplicationRecord
    # is expected to validate that :name cannot be empty/falsy
    validates :name, presence: true # The name cannot be blank
    # is expected to validate that :email is case-sensitively unique
    validates :email, uniqueness: true # The e-mail is unique
end
