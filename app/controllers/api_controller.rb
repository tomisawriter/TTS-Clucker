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

		p first + "|" + last + "|" + email + "|" + password

		test = {serverFirst: first, serverLast: last, serverEmail: email, serverPassword: password}
		render json: test

		#redirect_to '/main/about'
	end

	def persist

    signup = Signup.create(
      first_name: ,
      last_name: ,
      email: ,
      password: 
      )

      signup.save

      head :ok
  
    end

end
