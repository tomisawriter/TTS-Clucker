class ApiController < ApplicationController
	def woot
		id = params[:id]
		name = params[:name]
		p id + "|" + name
		
		test = {id: id, name: name}

		p test

		render json: test
	end

	def sign_up
		first = params[:clientFirst] 
		last = params[:clientLast]
		email = params[:clientEmail]
		password = params[:clientPassword]	

		newuser = Sign_Up.new first_name: first, last_name: last, email_address: email, password: password
		newuser.save

		render json: newuser

		# p first + "|" + last + "|" + email + "|" + password

		# test = {serverFirst: first, serverLast: last, serverEmail: email, serverPassword: password}
		# render json: test

		#redirect_to '/main/about'
	end


	def log_in
		email = params[:clientEmail]
		password = params[:clientPassword]	

		loguser = Log_In.new email: email, password: password
		loguser.save

		render json: loguser

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
