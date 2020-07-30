class Doctor < ApplicationRecord
    belongs_to :city
    has_many :appointments
    has_many :patients, through: :appointments
    has_many :specattributions
    has_many :specialties, through: :specattributions
end
