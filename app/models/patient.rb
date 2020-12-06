class Patient < ApplicationRecord
  has_many :notes
  has_many :family_histories
  has_many :medical_records
  belongs_to :doctor
end
