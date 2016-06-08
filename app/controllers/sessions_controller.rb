class SessionsController < ApplicationController

  def new

  end

  def create
    technician = Technician.find_by(email: params[:email])
    if technician
      if technician.authenticate(params[:password])
        session["technician_id"] = technician.id
        flash["notice"] = "Welcome back, #{technician.name}"
        redirect_to employees_path
        return
      else
        # Email is ok, but password was wrong
      end
    else
      # Email is unknown
    end
    redirect_to log_in_path, notice: "Invalid email or password"
  end

  def destroy
    reset_session
    #instead of session[:user_id] = nil
    redirect_to root_path
  end

end
