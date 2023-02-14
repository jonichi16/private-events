class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  validates :title, presence: true
  validates :description, presence: true
  validates :date_of_event, presence: true
  validates :location, presence: true
end
