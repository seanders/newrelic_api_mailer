require 'spec_helper'

describe "bad routes" do
  it 'should route to the catch-all' do
    expect(get: '/crazyroute').to route_to({:controller=>"application", :action=>"not_found", :path=>"crazyroute"})
  end
end
