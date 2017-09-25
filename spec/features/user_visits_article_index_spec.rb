feature "User visits articles index", type: :feature do
  scenario "and sees a table for articles" do
    visit "articles" 
    
    expect(page).to have_css "th", text: 'Title'
    expect(page).to have_css "th", text: 'Text'
  end
end
