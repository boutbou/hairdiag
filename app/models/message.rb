class Message < ApplicationRecord
  belongs_to :patient
  validates :subject, :content, presence: true
end
