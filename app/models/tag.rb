class Tag < ApplicationRecord
  belongs_to :blog
  belongs_to :question
end
