class DevotionalAddressesController < ApplicationController

	def destroy
		session[:return_to] ||= request.referer

    DevotionalAddress.find(params[:id]).destroy
    flash[:success] = "Direccion Eliminada. AQUI VA UN ACENTO"
    
    redirect_to session.delete(:return_to)
  end

end
