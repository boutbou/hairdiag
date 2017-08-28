Rails.application.routes.draw do

  devise_for :doctors
  root to: 'pages#home'

  # Dashboard des doctors / accueil controle
  get 'doctors/dashboard'
  # historique des cas patients assignés au doc
  get 'doctors/historic'
  # vue d'un cas ,avec edition et validation de la réponse
  get 'doctors/answer'
  # page de confirmation/recap et paiement coté patient
  get 'patients/validate'

  resources :patients, only: [:new, :create]

  # edition du profil utilisateur (docteur)
  get 'profile/edit'
  get 'profile/update'


  # page de formulaire de contact avec le site
  get 'pages/contact'
  # page d'info generale
  get 'pages/about'


  # mount Attachinary::Engine => "/attachinary"
  # devise_for :users, :controllers => { registrations:  "users/registrations" }
end
