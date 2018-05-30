class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
                       user_id: current_user.id,
                       product_id: params[:product_id],
                       quantity: params[:quantity]
                      )
    @order.save
    render 'show.json.jbuilder'
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end
end
