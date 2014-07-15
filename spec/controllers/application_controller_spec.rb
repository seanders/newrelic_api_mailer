require 'spec_helper'

describe ApplicationController do
  describe '#not_found' do
    it 'should return 404 when submitting a bad route' do
      post(:not_found)
      expect(response.status).to eq(404)
    end
  end
end
