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
        Mailer.stub(forward: double(deliver: true))
        post(:create, params)
        expect(response.status).to eq(200)
      end
    end

    context 'with invalid parameters' do
      let (:params) do
        {
          subject: "hi"
        }
      end

      it 'should return 422 if params does not have a `to` params' do
        post(:create, params)
        expect(response.status).to eq (422)
      end
    end
  end
end
