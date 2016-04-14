class Api::V1::ApplicationController < ActionController::Base
	
  skip_before_filter :verify_authenticity_token
respond_to :json
#	def restrict_access
#        # Verificar el header y encontrar al usuario mediante el token
#        authenticate_or_request_with_http_token do |token, options|
#          if ApiKey.exists?(access_token: token)
#            record_key = ApiKey.where(access_token: token).take
            # Verificar que el token es valido y no ha expirado
#            if record_key.valid?
              # Sacamos a current_user el usuario relacionado al token
#              @current_user = record_key.user
#              true
#            end
#          end
#        end
#        false
#    end
	
end