class OrdersController < ApplicationController
  def create
    patient = Patient.find(params[:patient_id])
    order  = Order.create!(patient_sku: patient.sku, amount: patient.price, state: 'pending')

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end
end
