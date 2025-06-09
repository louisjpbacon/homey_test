require 'rails_helper'

RSpec.describe "Project conversation history", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "allows a user to comment and change status" do
    user = create(:user)
    project = create(:project)

    visit project_path(project)

    fill_in "Comment", with: "This is my first comment!"
    click_button "Post Comment"

    expect(page).to have_content("This is my first comment!")
    expect(page).to have_content(user.name)

    select "In progress", from: "Status"
    click_button "Update Status"

    expect(page).to have_text("Test User changed the status to In progress")
    expect(page).to have_content(user.name)
  end
end