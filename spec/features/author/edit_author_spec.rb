require "rails_helper"

describe "Author edit page", type: :feature do
    it "should render without error" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    end
end
