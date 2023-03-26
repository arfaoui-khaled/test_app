class Market < ApplicationRecord
  scope :custom_display, -> { order(:time) }
end
