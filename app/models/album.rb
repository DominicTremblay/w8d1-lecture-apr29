class Album < ApplicationRecord

  validates :title, presence: true
  validates :year, presence: true

end
