require 'rails_helper'

RSpec.describe 'spendings/show', type: :view do
  before(:each) do
    assign(:spending, Spending.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
