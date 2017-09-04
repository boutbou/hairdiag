Rails.application.routes.draw do

  devise_for :doctors
  root to: 'pages#home'

  # Dashboard des doctors / accueil controle
  get 'doctors/dashboard', to: 'doctors#dashboard', as: :doctor_dashboard
  # historique des cas patients assignés au doc
  get 'doctors/history', to: 'doctors#history', as: :doctor_history

  # Le doc SELECT un case (verrouille l'attribution d'un docteur au patient et sort ce patient des autres médecins)
  post 'doctors/assign-patient', to: 'doctors#assign_patient', as: :doctor_assign_patient
  #As a doctor, I can see a patient case
  get 'doctors/patient/:id', to: 'doctors#show_patient', as: :doctor_show_patient
  #As a doctor, I can SUBMIT my answer to the patient
  post 'doctors/patient/:id', to: 'doctors#create_answer', as: :doctor_create_answer

  # page de confirmation/recap et paiement coté patient / EDIT
  get 'patients/:id/validation', to: 'patients#validation', as: :validation_patient

  #As a patient, I can pay; redirect to payment confirmation controller patients; ajouter : à ID
  get 'patients/:id/payment', to: 'patients#payment', as: :payment_patient

  #message de confirmation et remerciement suite au paiement
  get 'patients/:id/thank-you', to: 'patients#thank_you', as: :thank_you_patient

  # la show du patient est celle quand il va cliquer sur le lien du cas traité par le DR
  resources :patients, only: [:new, :create, :show, :edit, :update] do
    resources :payments, only: [:new, :create]
  end
  # ajout paiements et orders

  # edition du profil docteur
  get 'profile/edit'
  get 'profile/update'

  # page de formulaire de contact avec le site
  get '/contact', to: 'pages#contact'
  # page d'info generale
  get '/about', to: 'pages#about'


  mount Attachinary::Engine => "/attachinary"
  # devise_for :users, :controllers => { registrations:  "users/registrations" }
end
