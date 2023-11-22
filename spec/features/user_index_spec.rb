require 'rails_helper'

RSpec.feature 'User Index Page', type: :feature do
  before do
    @user = FactoryBot.create(:user, username: 'NgalaMac', posts_count: 3)
    visit users_path
  end

  scenario 'I can see user information' do
    expect(page).to have_content('NgalaMac')
  end

  scenario 'Clicking on a user redirects to user show page' do
    click_link 'NgalaMac'
    expect(page).to have_content('User Profile')
  end
end
