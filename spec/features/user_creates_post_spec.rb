feature "User creates new blog post", type: :feature do
  scenario "successfully" do
    visit "articles/new" 
    
    fill_in "Title", with: "Apple"
    fill_in "Text", with: "Apples are awesome!"
    
    click_on "Create Article"

    expect(page).to have_css "p", text: 'Apple'
    expect(page).to have_css "p", text: 'Apples are awesome!'
  end

  scenario "with invalid title" do
    visit "articles/new" 
    
    fill_in "Title", with: "Ap"
    fill_in "Text", with: "Apples are awesome!"
    
    click_on "Create Article"

    expect(page).to have_css "li", text: 'Title is too short'
  end

  scenario "with no text" do
    visit "articles/new" 
    
    fill_in "Title", with: "Apple"
    fill_in "Text", with: ""
    
    click_on "Create Article"

    expect(page).to have_css "li", text: 'Text can\'t be blank'
  end
end
