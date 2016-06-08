class TechniciansController < ApplicationController
  include TechnicianAuth #careful here

  def show
    @technician = Technician.find_by(id: params[:id])
    if !@technician || (@technician.id != session[:technician_id].to_i)   #if the tech is not the logged in tech, don't let them see the tech record
      redirect_to root_url
    end
  end

  def index
    @technicians = Technician.all
  end

  def new
    @technician = Technician.new
  end

  def create
    technician = Technician.new
    technician.name = params[:technician][:name]
    technician.email = params[:technician][:email]
    technician.password = params[:technician][:password]
    technician.save
    redirect_to technicians_path
  end

  def destroy
    Technician.delete(params[:id])
    redirect_to technicians_url
  end
end
