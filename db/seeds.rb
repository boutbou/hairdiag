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

puts 'Creating 15 fake patients...'
15.times do
  patient = Patient.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: ["Une femme", "Un homme"].sample,
  zip_code: 75017,
  city: Faker::Address.city,
  email: Faker::Internet.email,
  country: ["France", "Etranger"].sample,
  age: 28,
  loss_start_date: 2015,
  relative: ["aucun", "Père", "Mère", "Grand-mère", "Grand-père"].sample,
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
  price_cents: 2000
  status: ["started", "ended", "payment_failed", "payment_successful", "assigned", "answered", "opened"].sample
)

 patient.save!

# creation des prescriptions

prescription = Diagnostic.create(name: "prescription")
appointement = Diagnostic.create(name: "appointement")
recommandation = Diagnostic.create(name: "recommandation")

medicament_1 = MessageTemplate.new(
  subject: "Veuillez prendre le medicament 1",
  content: "Bonjour Jean Michel, avant de devenir chauve, veuillez prendre le medicament 1"
  )

# creation des messages templates

medicament_1.diagnostic = prescription

medicament_1.save!

medicament_2 = MessageTemplate.new(
  subject: "Veuillez prendre le medicament 2",
  content: "Bonjour Jean Michel, avant de devenir chauve, veuillez prendre le medicament 2"
  )

medicament_2.diagnostic = prescription

medicament_2.save!

medicament_3 = MessageTemplate.new(
  subject: "Veuillez prendre le medicament 3",
  content: "Bonjour Jean Michel, avant de devenir chauve, veuillez prendre le medicament 3"
  )

medicament_3.diagnostic = prescription

medicament_3.save!

urls = [
  'http://www.centre-microgreffe.com/wp-content/uploads/alopetie_07.jpg',
  'http://www.paraforme.fr/lemag/wp-content/uploads/2014/10/alopecie-2.jpg',
  'https://www.consoglobe.com/wp-content/uploads/2015/10/shutterstock-alopecie-chute-des-cheveux-conseils-02.jpg'
]
patient.photo_urls = urls

end

puts "Seeds done !"
