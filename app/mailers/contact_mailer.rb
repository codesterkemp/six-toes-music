class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.ask_matt.subject
  #
  def ask_matt
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
