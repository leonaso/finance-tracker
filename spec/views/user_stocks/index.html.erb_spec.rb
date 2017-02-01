require 'rails_helper'

RSpec.describe "user_stocks/index", type: :view do
  before(:each) do
    assign(:user_stocks, [
      UserStock.create!(
        :user_id => 2,
        :stock_id => 3
      ),
      UserStock.create!(
        :user_id => 2,
        :stock_id => 3
      )
    ])
  end

  it "renders a list of user_stocks" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
