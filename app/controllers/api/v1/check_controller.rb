class Api::V1::CheckController < Api::V1::ApplicationController
	
	def folio
    	@folio = Folio.where(folio: "#{params[:folio]}").to_json
    	
    	respond_with @folio
	end
end