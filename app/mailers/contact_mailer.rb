class ContactMailer < ActionMailer::Base
  default to: "repairpals@gmail.com"
  default from: "repairpals@gmail.com"
  def ask_matt(contact)
    @contact = contact

    mail( subject: "6Toes Music!")

  end
end
