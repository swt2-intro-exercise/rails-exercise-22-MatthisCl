require "rails_helper"

describe "Author edit page", type: :feature do
    before :each do
        @alan = FactoryBot.create :author
    end
    it "should render without error" do
        visit edit_author_path(@alan)
    end
    it "should save changes to the author" do
        visit edit_author_path(@alan)
        fill_in 'author[first_name]', with: 'Peter'
        find('input[type="submit"]').click
        expect(Author.find(@alan.id).first_name).to eq('Peter')
    end
end
