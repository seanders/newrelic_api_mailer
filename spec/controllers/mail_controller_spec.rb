require 'spec_helper'

describe MailController do
  describe '#create' do
    context "with valid parameters" do
      let(:params) do
        {
          to: "lol@test.com",
          subject: "Lolcats",
          body: "I truly love lol cats."
        }
      end

      it 'should return 200 if succesfully created an email' do
        Mailer.stub(:forward, true)
        post(:create, params)
        expect(response.status).to eq(200)
      end
    end
  end
end
