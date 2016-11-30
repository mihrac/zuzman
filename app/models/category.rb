class Category < ApplicationRecord
	has_many :sub_categories
	has_many :questions
	has_many :blogs
end
