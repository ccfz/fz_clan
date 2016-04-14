require 'rails_helper'

feature 'Sign up and Sign in' do
  context 'User is on page but not signed in' do
    it 'should have a signin button on the website' do
      visit '/'
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    it 'should not have a sign out button on the website' do
      visit '/'
      expect(page).not_to have_link('Sign out')
    end
  end
end