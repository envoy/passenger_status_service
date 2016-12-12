class WelcomeController < ApplicationController
  around_filter :allow_http_private_caching, only: [:index, :faq, :tos]
  http_basic_authenticate_with name: ENV["ADMIN"], password: ENV["ADMIN_PASSWORD"], except: :index
  skip_authorization_check
end
