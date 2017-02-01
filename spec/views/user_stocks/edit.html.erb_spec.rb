require 'rails_helper'

RSpec.describe "user_stocks/edit", type: :view do
  before(:each) do
    @user_stock = assign(:user_stock, UserStock.create!(
      :user_id => 1,
      :stock_id => 1
    ))
  end

  it "renders the edit user_stock form" do
    render

    assert_select "form[action=?][method=?]", user_stock_path(@user_stock), "post" do

      assert_select "input#user_stock_user_id[name=?]", "user_stock[user_id]"

      assert_select "input#user_stock_stock_id[name=?]", "user_stock[stock_id]"
    end
  end
end
