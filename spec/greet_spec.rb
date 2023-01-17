require "greet"

RSpec.describe "greet method" do
  it "greets the user" do
    test_one = greet("Anna")
    expect(test_one).to eq "hello Anna"
  end
end
