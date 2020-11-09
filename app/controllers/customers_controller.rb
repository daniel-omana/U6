class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def ordered
    @ordered = Customer.all.order(:full_name)
  end

  def missing_email
    @missing_email_customers = Customer.where(email_address: '')
  end
end
