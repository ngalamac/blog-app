require 'rails_helper'

RSpec.feature 'User Show Page', type: :feature do
  before do
    @user = FactoryBot.create(:user, username: 'NgalaMac', posts_count: 3)
    visit user_path(@user)
  end

  scenario 'I can see user information on the show page' do
    expect(page).to have_content('NgalaMac')
  end

  scenario 'Clicking on a user post redirects to post show page' do
    click_link 'View Post'
    expect(page).to have_content('Post Title')
  end

  scenario 'Clicking to see all posts redirects to user post index page' do
    click_link 'View All Posts'
    expect(page).to have_content('User Posts')
  end
end
