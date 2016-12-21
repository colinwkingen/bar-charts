require 'rails_helper'

describe Chart do
  it { should validate_presence_of :name }
  it { should belong_to :location }
end
