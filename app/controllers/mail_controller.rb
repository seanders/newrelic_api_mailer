class MailController < ApplicationController

  before_filter :mail_params

  def create
    mail = Mailer.forward(params)
    mail.deliver
    render nothing: true
  end

  private

  def mail_params
    params.require(:to)
    params.permit(:subject, :body)
  end

end
