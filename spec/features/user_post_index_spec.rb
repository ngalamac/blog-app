require 'rails_helper'

RSpec.feature 'User Post Index Page', type: :feature do
  before do
    @user = FactoryBot.create(:user, username: 'NgalaMac', posts_count: 3)
    visit user_posts_path(@user)
  end

  scenario 'I can see user and post information on the index page' do
    expect(page).to have_content('NgalaMac')
    expect(page).to have_content('Post Title')
  end

  scenario 'Clicking on a post redirects to post show page' do
    click_link 'Post Title'
    expect(page).to have_content('Post Title')
  end
end
