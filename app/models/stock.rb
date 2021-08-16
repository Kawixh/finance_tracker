class Stock < ApplicationRecord
  def self.new_lookup(ticker)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex[:sandbox_key],
      secret_token: Rails.application.credentials.iex[:secret_token],
      endpoint: 'https://sandbox.iexapis.com/v1'
    )

    client.price(ticker)
  end
end
