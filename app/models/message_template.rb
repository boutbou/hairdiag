class MessageTemplate < ApplicationRecord
  belongs_to :diagnostic
  validates :subject, presence: true
  validates :content, presence: true
end
