class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to public_customer_path(@customer.id)
    end
  end

  def update
    @customer = current_customer
  end

  private

  def customer_params
    params.permit(:last_name, :first_name, :last_name_kana,:first_name_kana, :email, :postal_code, :address, :telephone_number, :is_deleted)
  end
end
