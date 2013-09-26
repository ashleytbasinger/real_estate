require 'spec_helper'

describe Building do
  it { should have_valid(:street_address).when('221B Baker St') }
  it { should_not have_valid(:street_address).when(nil, '') }

  it { should have_valid(:city).when('Asheville') }
  it { should_not have_valid(:city).when(nil, '') }

  it { should have_valid(:state).when('North Carolina') }
  it { should_not have_valid(:state).when(nil, '') }

  it { should have_valid(:postal_code).when(28730) }
  it { should_not have_valid(:postal_code).when(nil, '') }
end
