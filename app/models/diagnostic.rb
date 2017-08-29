class Diagnostic < ApplicationRecord
  has_many :message_templates
  has_many :patients
  validates :name, presence: true
end
