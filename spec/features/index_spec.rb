feature 'Testing web app runs index' do
  scenario 'can see \'Enter Names:\' on the page' do
    visit('/')
    expect(page).to have_content "Enter Names:"
  end

  scenario 'can see a text input box' do
    visit('/')
    expect(page).to have_field('names')
  end
end
