# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Specialty.destroy_all
SpecAttribution.destroy_all
Appointment.destroy_all
City.destroy_all

Specialty.create!(name: "Mental health")
Specialty.create!(name: "Psychiatry")
Specialty.create!(name: "Family-doctor")
Specialty.create!(name: "Dermatology")
Specialty.create!(name: "Neurology")
Specialty.create!(name: "Nutrition")

30.times do
    city = City.create!(name: Faker::Address.city)
end

puts "30 cities have been created"


100.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: City.all.sample.id)
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

puts "100 doctors and patients added"

60.times do
appt = Appointment.create!(date: Faker::Date.between(from: '2020-04-01', to: '2025-09-28'), doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, city_id: City.all.sample.id)
end

puts "60 appointments have been made" 

100.times do
spec_attribution = SpecAttribution.create!(doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
end

