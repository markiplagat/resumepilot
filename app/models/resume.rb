class Resume < ApplicationRecord
  belongs_to :user

  validates :data, presence: true
end