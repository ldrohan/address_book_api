class EmailController < ApplicationController

  def about
  	HardWorker.perform_async('stuff', here)
  end

  def email
    render nothing: true, status: 200
    # TODO: send the email here.
    #binding.pry
    # @email = email.new(email_params)
    # respond_to do |format|
    # 	if @email.save
    # 	  format.html { redirect_to @email, notice: 'sent!' }
    # 	  format.json { render json @email, status: :created }
    # 	else
    # 	   format.html {render action: 'email'}
    # 	   format.json { render json: @email.errors, status: :unprocessable_entity }

    #   end
    # end
  end

private
	def email_params
	  params.require(:email).permit(:subject, :body)
	end
end		


# @movie = Movie.new(movie_params)

#     respond_to do |format|
#       if @movie.save
#         format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
#         format.json { render json: @movie, status: :created }
#       else
#         format.html { render action: 'new' }
#         format.json { render json: @movie.errors, status: :unprocessable_entity }
#       end
#     end
#   end