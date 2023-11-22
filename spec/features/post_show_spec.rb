require 'rails_helper'

RSpec.feature 'Post Show Page', type: :feature do
  before do
    @user = FactoryBot.create(:user, username: 'NgalaMac', posts_count: 3)
    @post = FactoryBot.create(:post, user: @user)
    visit post_path(@post)
  end

  scenario 'I can see post information on the show page' do
    expect(page).to have_content('Post Title')
    expect(page).to have_content('NgalaMac')
  end

  scenario 'I can see comment information on the show page' do
    expect(page).to have_content('Comment Author')
    expect(page).to have_content('Comment Body')
  end
end
