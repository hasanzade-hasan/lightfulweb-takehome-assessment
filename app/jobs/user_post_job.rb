class UserPostJob < ApplicationJob
  queue_as :default

  def perform(user)
    Faraday.post(user.url) do |request|
      request.headers['Content-Type'] = 'application/json'
      request.body = {
        firstname: user.firstname,
        lastname: user.lastname,
        birthdate: user.birthdate
      }.to_json
    end
  end
end
