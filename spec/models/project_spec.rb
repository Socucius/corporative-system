require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should belong_to(:customer) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end
