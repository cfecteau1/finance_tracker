class StocksController < ApplicationController
  
  def search
    if params[:stock]
      @stock = Stock.find_by_ticker(params[:stock]) #stock value passed in from params has, then look for it in db if params stock 
      @stock ||= Stock.new_from_lookup(params[:stock]) #||= means or equals.  stock from params hash does not exist in stock table
    end
    
    if @stock 
      #render json: @stock
      render partial: 'lookup'
    else
      render status: :not_found, nothing: true
    end
    
  end
  
end
