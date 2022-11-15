require 'rails_helper'

RSpec.describe "spendings/edit", type: :view do
  let(:spending) {
    Spending.create!()
  }

  before(:each) do
    assign(:spending, spending)
  end

  it "renders the edit spending form" do
    render

    assert_select "form[action=?][method=?]", spending_path(spending), "post" do
    end
  end
end
