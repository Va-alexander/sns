class ContactForm < ActionMailer::Base
  default :from => "noreply@youdomain.dev"
  default :to => "contactform@sns-event.com.ua"

  def new_message(message)
    @message = message
    mail(:subject => "ContactForm: #{message.subject}")
  end
end
