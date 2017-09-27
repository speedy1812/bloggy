feature "User deletes blog post", type: :feature do
  scenario "successfully" do
    visit "articles/new" 
    
    fill_in "Title", with: "Figs"
    fill_in "Text", with: "Figs are fabulous!"
    
    click_on "Create Article"
    click_on "Back"
    click_on "Destroy"

    expect(page).not_to have_content("Figs are fabulous!")
  end
end
