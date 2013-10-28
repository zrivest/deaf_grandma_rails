require 'pry'

class PagesController < ApplicationController
  def index
    @grandma = params[:grandma]
  end

  def index_response
    grandma_upcase = 'NOT SINCE 1984'
    grandma_downcase = "SPEAK UP I CANT HEAR YOU!!"

    if params[:user_input] == params[:user_input].upcase
      redirect_to ("/?grandma=" + grandma_upcase)
    else
      redirect_to ("/?grandma=" + grandma_downcase)
    end
  end
end