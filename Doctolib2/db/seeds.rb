# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

arr_cities = ["St-raphaël", "Hyeres", "Bastia", "La Rochelle", "Paris", "Montpellier", "Bezier", "marseille", "Deux Verges", "Plurien", "Longcochon" ]

arr_cities.each do |town|
  City.create!(city_name: town)
end

#Feed Patient Table
100.times do
Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.ids.sample)
end

#Feed Specialty Table
arr_specialty = ["Hospice and palliative medicine", "Sports medicine", "Military psychiatry", "Urologic oncology", "Adolescent medicine", "Urologue", "Gastroenterology", "Medical toxicology", "generalist", "dentist", "Pediatric anesthesiology" ,"Dermatopathology" ,"Hospice and palliative medicine"]
arr_specialty.each do |spe|
  Specialty.create!(name: "#{spe}")
end



#Feed Doctor Table
20.times do 
Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: "#{Faker::Number.number(digits: 5)}", city_id: City.ids.sample)

end

#Doctor Specialties table
40.times do
DoctorSpecialty.create!(doctor_id: Doctor.ids.sample, specialty_id: Specialty.ids.sample)
end

#Creation des Appointment
200.times do
  doctor_id = Doctor.find(rand(1..20))
  patient_id = Patient.find(rand(1..100))
  Appointment.create!(doctor: doctor_id, patient: patient_id,  city_id: City.ids.sample)
end