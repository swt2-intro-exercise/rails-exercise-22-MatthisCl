require 'rails_helper'

RSpec.describe Author, type: :model do
  it "Should have first name, last name, homepage" do
    author = Author.new(first_name: 'Alan', last_name:'Turing', homepage: 'https://de.wikipedia.org/wiki/Alan_Turing' )
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('https://de.wikipedia.org/wiki/Alan_Turing')
    expect(author.name).to eq('Alan Turing')
  end
end
