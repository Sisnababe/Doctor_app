# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

5.times do |index|
    Doctor.create(name: Faker::Name.name)
  end

10.times do |index|
    Patient.create(name: Faker::Name.name)
end

25.times do |index|
    Appointment.create(
        place: Faker::Address.state, 
        date: Faker::Date.in_date_period,
        doctor_id: Doctor.all.sample.id, 
        patient_id: Patient.all.sample.id)
  end
