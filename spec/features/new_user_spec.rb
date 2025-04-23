require "rails_helper"

RSpec.describe "Onboarding form (static)", type: :feature do
  it "renders and fills US-specific fields only" do
    visit new_user_path(user: { country: "US" })

    select "California", from: "State"
    check "I opt out of GDPR"
    fill_in "Name", with: "Alice"

    expect(page).not_to have_select("Community")
    expect(page).not_to have_select("Province")
    expect(page).not_to have_select("Language")
  end

  it "renders and fills Belgian-specific fields only" do
    visit new_user_path(user: { country: "BE" })

    select "Dutch-speaking", from: "Community"
    fill_in "Name", with: "Bob"

    expect(page).not_to have_select("State")
    expect(page).not_to have_content("I opt out of GDPR")
    expect(page).not_to have_select("Province")
    expect(page).not_to have_select("Language")
  end

  it "renders and fills Canadian-specific fields only" do
    visit new_user_path(user: { country: "CA" })

    select "Ontario", from: "Province"
    select "English", from: "Language"
    fill_in "Name", with: "Charlie"

    expect(page).not_to have_select("Community")
    expect(page).not_to have_select("State")
    expect(page).not_to have_content("I opt out of GDPR")
  end
end