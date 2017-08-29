# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




patient = Patient.new(
  first_name: 'Benjamin',
  last_name: 'Hagege',
  gender: 'male',
  zip_code: 75017,
  city: 'Paris',
  email: 'hagegebenjamin@gmail.com',
  country: 'France',
  age: 28,
  loss_start_date: 2015,
  relative: 'father',
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
  'http://img.clubic.com/08254724-photo-xbox-console.jpg',
  'http://compass.xbox.com/assets/a5/d3/a5d3e0e4-38fd-42ab-90f4-e7b5112af4d1.png'
]
patient.photo_urls = urls # Multi-upload happens here
