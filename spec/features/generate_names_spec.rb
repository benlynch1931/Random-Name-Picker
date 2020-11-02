feature "Test buttons to pick name at random exist" do
  scenario "'Pick Name' button exists" do
    enter_names
    expect(page).to have_button("generate-name")
  end

  scenario "clicking button displays a name from the list" do
    enter_names
    click_button("generate-name")
    expect(page).to have_content("Ben")
  end
end
