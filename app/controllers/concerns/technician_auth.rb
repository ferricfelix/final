module TechnicianAuth
	extend ActiveSupport::Concern

	def tech_auth
		if session["technician_id"].blank?
			redirect_to technicians_path
			return
		end
	end

end