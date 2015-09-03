class YodaSpeaksController < ApplicationController
  
  def create
    @speak = YodaSpeak.create
    @speak.user_input = params[:user_input]
    @speak.user_id = current_user.id
    binding.pry
    @translated_reply = @speak.process(params[:user_input])
    @speak.response = @translated_reply
    @speak.save
    binding.pry
    redirect_to root_path
  end

  def new
    
  end

end