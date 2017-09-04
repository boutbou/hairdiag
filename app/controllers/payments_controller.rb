class PaymentsController < ApplicationController
  before_action :set_patient
  skip_before_action :authenticate_doctor!

  def new
  end

  def create
   customer = Stripe::Customer.create(
     source: params[:stripeToken],
     email:  params[:stripeEmail]
     )

   charge = Stripe::Charge.create(
     customer:     customer.id,   # You should store this customer id and re-use it.
     amount:       @patient.price_cents,
     description:  "Payment for patient #{@patient.email}",
     currency:     @patient.price.currency
     )

   @patient.update(payment: charge.to_json, paid: true, status: 'payment_successful')
   redirect_to thank_you_patient_path(@patient)

  rescue Stripe::CardError => e
   flash[:alert] = e.message
   redirect_to validation_patient_path(@patient)
  end

  private

  def set_patient
    @patient = Patient.find(params[:patient_id])
  end
end
