class FiguresController < ApplicationController

	get "/figures" do 
		erb :"figures/new"
	end

	post "/figures/new" do 
		figure = Figure.create(params[:figure])

		redirect "/figures/#{figure.id}"
	end


end
