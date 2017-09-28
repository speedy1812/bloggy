RSpec.describe Comment, type: :model do

  it {should belong_to(:article) }
  
end
