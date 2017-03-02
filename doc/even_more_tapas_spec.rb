require "diff_matcher/rspec_3"

RSpec.describe "a complex example" do
  let(:response) {{person: {first_name: "Noel", last_name: "Rappin"},
                  company: {name: "Table XI", url: "www.tablexi.com"}}}

  it "gets the right response" do
    expect(response).to be_matching({
      person: {first_name: "Avdi", last_name: "Grim"},
      company: {name: "ShipRise", url: /tablexi/}
    }).with_options(quiet: false)
  end
end
