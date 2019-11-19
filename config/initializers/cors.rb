# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# we are saying her are the request that we are going to authorize
## and you can white list them - if you know who you are going to accept
## request from then you white list them here if you dont know (having
## a open api meaning you can accept request from everyone then you can
## do the following:   origins '*' - NOT RECCOMENDED TO KEEP IT LIKE THIS )
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
# probably dont want people to do all of this:
## methods: [:get, :post, :put, :patch, :delete, :options, :head]
