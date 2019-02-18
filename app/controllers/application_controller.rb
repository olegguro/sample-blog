class ApplicationController < ActionController::Base


before_filter :configure_permitted_parameters, if: :device_controller?

    private
    def configure_permitted_parameters
        device_parameter_sanitizer.for(:sign_up) << :username 
    end




end
