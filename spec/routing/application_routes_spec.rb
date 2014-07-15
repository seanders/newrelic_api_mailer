require 'spec_helper'

describe "bad routes" do
  it 'should route to the catch-all' do
    expect(get: '/crazyroute').not_to be_routable
  end
end
