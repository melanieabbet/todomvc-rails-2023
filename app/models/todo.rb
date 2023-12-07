class Todo < ApplicationRecord
  scope :active, -> { where(completed: false) }
  scope :completed, -> { where(completed: true) }

  validates :title, presence: true
  normalizes :title, with: ->(title) { title.strip }

  def self.toggle_all!

    update_all completed: active.any?

    # same
    # if active.any?
    #   update_all completed: true
    # elsif
    #   update_all completed: false
    # end 

  end
end
