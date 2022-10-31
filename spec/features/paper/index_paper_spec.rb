require 'rails_helper'

describe "Paper index page", type: :feature do

it "should have a link to eeach paper's edit page" do
    visit papers_path
    Paper.all.each do |paper|
      expect(page).to have_link('Edit', href: edit_paper_path(paper))
    end
  end
it "should have a link to delete a paper" do
    visit papers_path
    Paper.all.each do |paper|
      expect(page).to have_link('Delete', href: paper_path(paper))
    end
  end
end