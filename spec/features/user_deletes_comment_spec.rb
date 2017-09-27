feature "User deletes comment", type: :feature do
  scenario "successfully" do
    visit "articles/new" 
    
    fill_in "Title", with: "Figs"
    fill_in "Text", with: "Figs are fabulous!"
    
    click_on "Create Article"

    fill_in "Commenter", with: "Fred"
    fill_in "Body", with: "Flintstones are better."

    click_on "Create Comment"

    expect(page).to have_content("Fred")
    expect(page).to have_content("Flintstones are better.")

    click_on "Destroy Comment"

    expect(page).not_to have_content("Fred")
    expect(page).not_to have_content("Flintstones are better.")

  end
end
