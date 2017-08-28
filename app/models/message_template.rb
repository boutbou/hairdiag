class MessageTemplate < ApplicationRecord
  belongs_to :diagnostic
  validates :subject, :content, presence: true
end
