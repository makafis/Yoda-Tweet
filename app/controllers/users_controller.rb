class UsersController < ApplicationController
  
  def show
    

  end

  def create
    
  end 

  def update
    
  end

  def destroy 

  end

  def index
    if current_user
      @client = TwitterConnection.new(current_user).create_client
           
      # to tweet
      # @client.update("TWEETCONTENT")
    end
  end


end