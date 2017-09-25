feature "UserVisitsNew", type: :feature do
  scenario "and makes sure he is on the right page" do
    visit "articles/new" 

    expect(page).to have_css "h1", text:'New Article'
  end
end
