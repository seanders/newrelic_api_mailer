require 'spec_helper'

describe 'routes for Mail' do
  it 'routes to #foward' do
    expect(post: "/mail").to route_to(controller: 'mail', action: 'create')
  end
end
