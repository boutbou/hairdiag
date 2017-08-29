class Message < ApplicationRecord
  belongs_to :patient
  validates :subject, length: { minimum: 5 }, presence: true
  validates :content, length: { minimum: 50 }, presence: true
end
