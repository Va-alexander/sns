class ContactController < ApplicationController

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      ContactForm.new_message(@message).deliver
      redirect_to root_path, :notice => "Message was successfully sent."
    else
      redirect_to root_path(:anchor => (t 'menu.items')[3] ), :notice => "Please fill all fields."
    end
  end

end
