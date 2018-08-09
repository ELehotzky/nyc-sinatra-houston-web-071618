class LandmarksController < ApplicationController

	get "/landmarks" do 
		erb :"landmarks/show"
	end

	# get "/landmarks/new" do 
	# 	erb :"figures/new"
	# end

	post "/landmarks" do 
		@landmark = Landmark.create(params[:landmark])

		erb :"landmarks/show"
	end


end
