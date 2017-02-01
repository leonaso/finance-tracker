require 'rails_helper'

RSpec.describe "user_stocks/show", type: :view do
  before(:each) do
    @user_stock = assign(:user_stock, UserStock.create!(
      :user_id => 2,
      :stock_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
