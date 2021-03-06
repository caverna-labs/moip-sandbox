require 'httparty'
require 'recursive-open-struct'
require 'pry'

@host = "https://sandbox.moip.com.br"

@headers = {'Content-Type' => 'application/json', 'Authorization' => 'Basic WUpORzJKSjdFRjlEMDRET01UR0U4VDZaQzJUQ1pBQ0Q6TDRCSDY3T0VPUFg4TDhLS0g5SFRUU1dNQ0ZaSDVIMkJZUzE4Rk9VSw=='}

@body = {
  "resourceId": "PAY-CZH6NPTIWCWI",
  "event": "PAYMENT.AUTHORIZED"
}

@response = HTTParty.post "#{@host}/v2/webhooks", headers: @headers, body: @body.to_json

p @response

