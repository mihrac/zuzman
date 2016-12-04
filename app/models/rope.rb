class Rope < ApplicationRecord
    has_many :questions, as: :ropeable, dependent: :destroy
    has_many :blogs, as: :ropeable, dependent: :destroy


end
