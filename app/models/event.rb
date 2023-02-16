class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :attendances, source: :attendee

  validates :title, presence: true
  validates :description, presence: true
  validates :date_of_event, presence: true
  validates :location, presence: true
end
