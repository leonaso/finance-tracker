require 'rails_helper'

RSpec.describe "user_stocks/new", type: :view do
  before(:each) do
    assign(:user_stock, UserStock.new(
      :user_id => 1,
      :stock_id => 1
    ))
  end

  it "renders new user_stock form" do
    render

    assert_select "form[action=?][method=?]", user_stocks_path, "post" do

      assert_select "input#user_stock_user_id[name=?]", "user_stock[user_id]"

      assert_select "input#user_stock_stock_id[name=?]", "user_stock[stock_id]"
    end
  end
end
