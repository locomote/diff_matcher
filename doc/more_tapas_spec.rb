RSpec.describe "a complex example" do
  let(:response) {{person: {first_name: "Noel", last_name: "Rappin"},
                  company: {name: "Table XI", url: "www.tablexi.com"}}}

  it "gets the right response" do
    expect(response).to match({
      person: {first_name: "Avdi", last_name: "Grim"},
      company: {name: "ShipRise", url: a_string_matching(/tablexi/)}
    })
  end
end
