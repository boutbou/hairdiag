# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.destroy_all
Doctor.destroy_all

doctor = Doctor.new(
  first_name: 'Jean',
  last_name: 'Reno',
  adress: '23 rue Jouffroy',
  zip_code: 75017,
  city: 'Paris',
  country: 'France',
  description: 'Medecin dermato depuis 2 ans',
  url: 'http://doctolib.com',
  phone_number: "0612394124",
  specialty: 'dermatologue spécialiste des culs chevelus',
  RPPS: '123123',
  email: 'jeanreno@gmail.com',
  password: 'reno2992'
  )
doctor.save!

patient = Patient.new(
  first_name: 'Benjamin',
  last_name: 'Hagege',
  gender: 'Un homme',
  zip_code: 75017,
  city: 'Paris',
  email: 'hagegebenjamin@gmail.com',
  country: 'France',
  age: 28,
  loss_start_date: 2015,
  relative: "Père",
  weekly_shampoo: 'aer',
  dandruff: 'aer',
  greasy_hair: 'aerae',
  refined_hair: 'aerazer',
  brushing_hair: 'Yes',
  shaving_hair: 'Yes',
  scalp_density: 'yes',
  hair_thickness: 'yes',
  hair_color: 'yes',
  hair_type: 'a',
  vitamines: 'yes',
  minoxidil: 'oui',
  minoxidil_doses: 2,
  finasteride: 'oui',
  hair_transplant: 'oui',
  hair_transplant_technic: 'fue',
  stage: 'aer',
  traction_test: 'aer',
  restore_area: 'aer',
  technical_preference: 'fue',
  remark: 'merci de me trouver une solution',
  status: 'yes'
  )

patient.save!

urls = [
  'http://www.centre-microgreffe.com/wp-content/uploads/alopetie_07.jpg',
  'http://www.paraforme.fr/lemag/wp-content/uploads/2014/10/alopecie-2.jpg'
]
patient.photo_urls = urls # Multi-upload happens here



puts "Seeds done !"
