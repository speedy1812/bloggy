RSpec.describe Article, type: :model do

  it { should validate_presence_of(:title) }
  it { should validate_length_of(:title).is_at_least(3) }

end
