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
		password = params[:clientPassword]	

		newuser = Sign_ups.new(first_name: first_name, last_name: last_name, email_address: email_address, password: password)

		newuser.save

		render json: newuser

		head :ok
		# p first + "|" + last + "|" + email + "|" + password

		# test = {serverFirst: first, serverLast: last, serverEmail: email, serverPassword: password}
		# render json: test

		#redirect_to '/main/about'
	end

	# def persist

	# 	signup = Sign_up.insert_into(
 #      	first_name: "Fred",
 #      	last_name: "Sanford",
 #      	email: "tvland@aol.com",
 #      	password: "1234"
 #      	)

 #      	signup.save

 #    end

	# def persist

 #    signup = Sign_up.create(
 #      first_name: "Fred",
 #      last_name: "Sanford",
 #      email: "tvland@aol.com",
 #      password: "1234"
 #      )

 #      signup.save

 #      # head :ok
  
 #    end

end
