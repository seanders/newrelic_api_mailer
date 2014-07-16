class MailController < ApplicationController

  def create
    mail = Mailer.forward(mail_params)
    mail.deliver
    render nothing: true
  end

  private

  def mail_params
    params.require(:to)
    params.permit(:subject, :body)
  end

end
