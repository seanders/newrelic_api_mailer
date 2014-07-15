require "spec_helper"

describe Mailer do
  describe '#forward' do
    let(:mail_options) { {to: "you@yours.com", subject: "foobar", body: "I like ruby"} }
    let(:mail) { Mailer.forward(to: mail_options[:to], subject: mail_options[:subject], body: mail_options[:body]) }

    it 'should have the correct subject' do
      expect(mail.subject).to eq(mail_options[:subject])
    end

    it 'should have the correct recipient' do
      expect(mail.to).to eq([mail_options[:to]])
    end

    it 'should have the correct sender' do
      expect(mail.from).to eq(["no-reply@example.com"])
    end

    it 'should have correct body content' do
      expect(mail.body.encoded).to include("ruby")
    end
  end
end
