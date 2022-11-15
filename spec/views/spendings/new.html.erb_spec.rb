require 'rails_helper'

RSpec.describe 'spendings/new', type: :view do
  before(:each) do
    assign(:spending, Spending.new)
  end

  it 'renders new spending form' do
    render

    assert_select 'form[action=?][method=?]', spendings_path, 'post' do
    end
  end
end
