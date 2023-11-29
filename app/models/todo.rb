class Todo < ApplicationRecord
  # TODO 1 No blank data
  validates :title, presence: true
  # TODO 2 leading and trailing white spaces are removed
  normalizes :title, with: -> title {title.strip}
end
