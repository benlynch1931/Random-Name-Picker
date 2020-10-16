feature "Test buttons to pick name at random exist" do
  scenario "'Pick Name' button exists" do
    visit('/')
    fill_in("names", with: "Ben\nArabella\nMaiara\nKrzysztof\nBeca\nEmily\nCam")
    click_button "submit"
    expect(page).to have_button("generate-name")
  end
end
