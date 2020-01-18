class WelcomeController < ApplicationController
  
  def index
  	@supplements = Supplement.all
  end

end
