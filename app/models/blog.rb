class Blog < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :user
  belongs_to :category
  belongs_to :sub_category
  acts_as_votable
end
