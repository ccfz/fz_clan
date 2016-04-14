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

  context 'User on page is signed in' do

    before do
      visit '/'
      click_link('Sign up')
      fill_in('Email', with: 'test@example.com')
      fill_in('Password', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      click_button('Sign up')
    end

    it 'should have a sign out button on the website' do
      visit '/'
      expect(page).to have_link('Sign out')
    end

    it 'should not have a sign in/sign up button' do
      visit '/'
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end
  end
end