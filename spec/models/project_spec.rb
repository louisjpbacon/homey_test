require 'rails_helper'

RSpec.describe Project, type: :model do
  subject { build(:project) }

  it { should have_many(:comments).dependent(:destroy) }
  it { should have_many(:status_changes).dependent(:destroy) }
  it { should validate_presence_of(:name) }
end