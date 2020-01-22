class ApplicationController < ActionController::Base

	before_action :set_searchable

	private

	# Creates an array of all supplement names for use in the
	# typeahead search bar in sitewide header - views/layouts/_header

	def set_searchable
	  gon.supplement_array = []
	  Supplement.all.each do |supplement|
	    gon.supplement_array << supplement.name
	  end
	end

end
