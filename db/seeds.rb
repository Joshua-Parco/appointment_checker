# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
50.times do
  user = User.create(name: Faker::FunnyName.name)
end

15.times do
  doctor = Doctor.create(name: Faker::FunnyName.name)
end

75.times do
  appointment = Appointment.create(user_id: User.all.sample.id, doctor_id: Doctor.all.sample.id, appointment_date: Faker::Time.forward(days: 120, format: :long))
end

