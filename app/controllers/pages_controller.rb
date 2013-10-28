require 'pry'

class PagesController < ApplicationController
  def index
    @grandma = params[:grandma]
  end

  def index_response
    grandma_upcase = 'NOT SINCE 1984'
    grandma_downcase = "SPEAK UP I CANT HEAR YOU"
    if params[:user_input] == params[:user_input].upcase
      @grandma_response = grandma_upcase
      # binding.pry
      redirect_to ("/grandma/#{@grandma_response}")
    else
      @grandma_response = grandma_downcase
      # binding.pry
      redirect_to ("/grandma/#{@grandma_response}")
    end
  end
end