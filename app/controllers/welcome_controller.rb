class WelcomeController < ApplicationController
  
  def index
  	gon.supplement_array = []
  	Supplement.all.each do |supplement|
  		gon.supplement_array << supplement.name
  	end
  end

end
