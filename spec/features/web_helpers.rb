def enter_names
  visit('/')
  fill_in("names", with: "Ben\nArabella\nMaiara\nKrzysztof\nBeca\nEmily\nCam")
  click_button "submit"
end
