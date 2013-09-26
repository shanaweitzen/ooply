class RegistrantMailer < ActionMailer::Base
	default from: "no-reply@Ooply.com"

	def registrant_email(registrant)
		@registrant = registrant
		

		mail to: registrant.email, subject: "Confirm your new Ooply account"
	end
end