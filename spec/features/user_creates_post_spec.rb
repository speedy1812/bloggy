feature "User creates new blog post", type: :feature do
  scenario "successfully" do
    visit "articles/new" 
    
    fill_in "Title", with: "Apple"
    fill_in "Text", with: "Apples are awesome!"
    
    click_on "Create Article"

    expect(page).to have_css "p", text: 'Apples are awesome!'
  end
end
