class Admin::CustomersController < ApplicationController
  def show
    @customers = Customer.find(params[:id])
  end

  def index
    @customers = Customer.all
  end

  def edit
  end
end
