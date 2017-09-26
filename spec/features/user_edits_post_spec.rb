feature "User edits blog post", type: :feature do
  scenario "successfully" do
    visit "articles/new" 
    
    fill_in "Title", with: "Apple"
    fill_in "Text", with: "Apples are awesome!"
    
    click_on "Save Article"
    click_on "Back"
    click_on "Edit"
    
    expect(page).to have_css "h1", text: 'Editing article'

    fill_in "Text", with: "Apples are amazing!"

    click_on "Update Article"
    
    expect(page).to have_content("Apples are amazing!")
  end
end
