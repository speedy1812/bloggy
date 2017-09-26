feature "User creates new blog post", type: :feature do
  scenario "successfully" do
    visit "articles/new" 
    
    fill_in "Title", with: "Apple"
    fill_in "Text", with: "Apples are awesome!"
    
    click_on "Save Article"

    expect(page).to have_css "p", text: 'Apple'
    expect(page).to have_css "p", text: 'Apples are awesome!'
  end

  scenario "unsuccessfully" do
    visit "articles/new" 
    
    fill_in "Title", with: "Ap"
    fill_in "Text", with: "Apples are awesome!"
    
    click_on "Save Article"

    expect(page).to have_css "h1", text: 'New Article'
    
  end
end
