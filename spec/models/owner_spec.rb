require 'spec_helper'

describe Owner do
  it {should have_valid(:first_name).when('Rocky') }
  it {should_not have_valid(:first_name).when('nil', '') }

  it {should have_valid(:last_name).when('Balboa') }
  it {should_not have_valid(:last_name).when('nil', '') }

  it {should have_valid(:email).when('eyeofthetiger@boxing.com') }
  it {should_not have_valid(:email).when('nil', '') }

  it {should have_valid(:company).when('Wicked Sweet Gloves, Inc.') }
  it {should_not have_valid(:company).when('nil', '') }
end
