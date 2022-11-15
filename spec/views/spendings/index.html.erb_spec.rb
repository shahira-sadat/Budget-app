require 'rails_helper'

RSpec.describe 'spendings/index', type: :view do
  before(:each) do
    assign(:spendings, [
             Spending.create!,
             Spending.create!
           ])
  end

  it 'renders a list of spendings' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
