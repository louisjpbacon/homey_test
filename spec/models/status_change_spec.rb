require 'rails_helper'

RSpec.describe StatusChange, type: :model do
  subject { build(:status_change) }

  it { should belong_to(:user) }
  it { should belong_to(:project) }
  it { should define_enum_for(:status).with_values(%i[not_started in_progress completed]) }
  it { should validate_presence_of(:status) }
end