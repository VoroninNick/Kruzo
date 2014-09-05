class MainController < ApplicationController
  def index

  end
  def test

  end

  def order_question
    OrderQuestion.send_data(params[:data]).deliver
  end

  def order_online
    OrderOnline.send_data(params[:data]).deliver
  end

  def order_product
    OrderProduct.send_data(params[:data]).deliver
  end

  def order_card
    OrderCard.send_data(params[:data]).deliver
  end

  def call_order
    CallOrder.send_data(params[:data]).deliver
  end
end
