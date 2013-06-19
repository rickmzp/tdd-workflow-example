step "I register for a poker game" do
  visit "/"
  fill_in "Name", with: "Rick"
  click_button "Submit"
end
