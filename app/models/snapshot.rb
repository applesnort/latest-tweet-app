class Snapshot < ApplicationRecord
  # Your username cannot be longer than 15 characters.
  # Your name can be longer (50 characters) or shorter than 4 characters, but usernames are kept shorter for the sake of ease. 
  # A username can only contain alphanumeric characters (letters A-Z, numbers 0-9) with the exception of underscores, as noted above.
  validates :handle, length: { minimum: 4, maximum: 15 }, format: { with: /[a-zA-Z0-9]+/,
    message: "A username can only contain alphanumeric characters" }

  def self.client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.credentials.dig(:twitter, :CONSUMER_API_KEY)
      config.consumer_secret     = Rails.application.credentials.dig(:twitter, :CONSUMER_API_SECRET_KEY)
      config.access_token        = Rails.application.credentials.dig(:twitter, :ACCESS_TOKEN)
      config.access_token_secret = Rails.application.credentials.dig(:twitter, :ACCESS_TOKEN_SECRET)
    end
  end
end
