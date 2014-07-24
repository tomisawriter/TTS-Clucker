class ApiController < ApplicationController
	def woot
		id = params[:id]
		name = params[:name]
		p id + "|" + name
		
		test = {id: id, name: name}

		p test

		render json: test
	end

	def signup
		first = params[:clientFirst] 
		last = params[:clientLast]
		email = params[:clientEmail]	

		p first + "|" + last + "|" + email	

		test = {serverFirst: first, serverLast: last, serverEmail: email}
		render json: test

		#redirect_to '/main/about'
	end
end
