require 'rails_helper'

describe "New author page", type: :feature do
    it "should exist at 'new_author_path' and render withour error" do
        #https://guides.rubyonrails.org/routing.html#path-and-url-helpers
        visit new_author_path
    end
    it "should have input fields to input a new authors first name, last name , and homepage" do
        visit new_author_path
        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
    end
    it "should check if the new author is saved" do
        visit new_author_path
        fill_in 'author[first_name]', with: 'Alan'
        fill_in 'author[last_name]', with: 'Turing'
        fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
        find('input[type="submit"]').click
    end
    it "should not save an author without a last name" do
        @author = Author.new(first_name: 'Alan', homepage: 'http://wikipedia.org/Alan_Turing')
        expect(@author).to_not be_valid
    end
end
