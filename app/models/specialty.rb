class Specialty < ApplicationRecord
    has_many :specattributions
    has_many :doctors, through: :specattributions
end
