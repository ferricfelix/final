module TechnicianAuth
	extend ActiveSupport::Concern

	def tech_auth
		if session["technician_id"].blank?
			redirect_to log_in_path
			return
		end
	end

end