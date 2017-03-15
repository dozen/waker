require 'rails_helper'

RSpec.describe "auto_schedulers/index", :type => :view do
  before(:each) do
    assign(:auto_schedulers, [
      AutoScheduler.create!(
        :name => "Name",
        :settings => "MyText",
        :enabled => false
      ),
      AutoScheduler.create!(
        :name => "Name",
        :settings => "MyText",
        :enabled => false
      )
    ])
  end

  it "renders a list of auto_schedulers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
