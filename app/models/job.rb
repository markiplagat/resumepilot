class Job < ApplicationRecord
  validates :title, :company, :description, presence: true
end
