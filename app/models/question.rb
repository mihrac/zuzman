class Question < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :category
  belongs_to :sub_category
  belongs_to :user
  belongs_to :ropeable, polymorphic: true

  acts_as_votable
end
