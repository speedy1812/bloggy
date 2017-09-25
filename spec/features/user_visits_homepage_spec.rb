feature "UserVisitsHomepage", type: :feature do
  scenario "visits home page" do
    visit root_path

    expect(page).to have_css "h1", text:'Hello world'
  end
end
