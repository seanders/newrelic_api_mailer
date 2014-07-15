class Mailer < ActionMailer::Base
  default from: %(NoReply <no-reply@example.com>)

  def forward(options)
    @body = options[:body]
    mail(to: options[:to], subject: options[:subject]) do |format|
      format.html
      format.text
    end
  end
end
