require 'pry'

class PagesController < ApplicationController
  def index
    @grandma = params[:grandma]
  end

  def index_response
    grandma_upcase = 'NOT SINCE 1984'
    grandma_downcase = "SPEAK UP I CANT HEAR YOU!!"

    if params[:user_input] == params[:user_input].upcase
      @grandma = grandma_upcase
      redirect_to ("/response")
    else
      @grandma = grandma_downcase
      redirect_to ("/response")
    end
  end
end