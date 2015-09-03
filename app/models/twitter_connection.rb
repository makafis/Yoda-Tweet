class TwitterConnection 
  attr_reader :client

  def initialize(user)
    @user = user
    @client = create_client
  end

  def create_client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_KEY"]
      config.consumer_secret     = ENV["TWITTER_SECRET"]
      config.access_token        = @user.token
      config.access_token_secret = @user.secret
    end
  end

end