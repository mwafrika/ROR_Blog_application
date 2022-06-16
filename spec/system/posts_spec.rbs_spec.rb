require 'rails_helper'

RSpec.describe 'PostsSpec.rbs', type: :system do
  describe 'index page' do
    before do
      driven_by(:rack_test)
    end
    
    it 'should show the posts' do
      visit '/posts'
      expect(page).to have_content('Posts')
    end
  end
end
