class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   before_filter :twitterclient
  def twitterclient
		@client = Twitter::REST::Client.new do |config|
      config.consumer_key        = 'appkey'
      config.consumer_secret     = 'appsecretkey'
    end
  end
end
