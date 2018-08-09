class FiguresController < ApplicationController

	get "/figures" do
		erb :"figures/index"
	end

	get "/figures/new" do 
		erb :"figures/new"
	end

	# get "/figures/index" do 
	# 	erb :"figures/index"
	# end

	post "/figures" do 
		
		@figure = Figure.create(params[:figure])
		@title = Title.create(params[:title])
		@landmark = Landmark.create(params[:landmark])

		erb :"figures/index"
	end

	get "/figures/:id" do
		@figure = Figure.find(params[:id])

		erb :"figures/show"
	end

	get "/figures/:id/edit" do 
		@figure = Figure.find(params[:id])

		erb :"figures/edit"
	end

	# post "/figures/:id" do 
	# 	@figure = Figure.find(params[:id])

	# 	erb :"figures/show"
	# end

end
