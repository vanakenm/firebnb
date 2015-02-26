class GuestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.guest_mailer.booking_confirmed.subject
  #
  def booking_confirmed(booking)
    @booking = booking
    mail to: @booking.guest.email, subject: "Your booking is confirmed"
  end
end
