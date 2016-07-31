class RsvpMailer < ApplicationMailer
  default from: "no-reply@marianaesimao.com", to: "simaoemariana@gmail.com"

  def rsvp name, email, notes
    @name = name
    @email = email
    @notes = notes
    mail(subject: "Someone RSVPed!")
  end
end
