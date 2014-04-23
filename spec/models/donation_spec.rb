require 'spec_helper'

describe Donation do
  it { should belong_to :non_profit }
  it { should validate_presence_of :name }
end
