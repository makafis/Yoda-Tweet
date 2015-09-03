class YodaSpeak < ActiveRecord::Base
  belongs_to :user

    def process(user_input)
      @user_input = format_input(user_input)
      yodaspeak_call(@user_input)
    end

 private

    def format_input(user_input)
      user_input.gsub!(/\s+/, '+')
    end

    def yodaspeak_call(formatted_input)
      RestClient::Request.execute(method: :get, url: "https://yoda.p.mashape.com/yoda?sentence=#{formatted_input}", headers: {"X-Mashape-Key" => "QQtWaQ0Z97mshuRS0vYGc67jCenJp1Nh5JZjsnMlG6kPnec92N","Accept" => "text/plain"})
    end

end

