class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include Response
  include Authenticate
  include SerializableResource
end
