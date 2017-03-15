require 'rails_helper'

RSpec.describe "auto_schedulers/show", :type => :view do
  before(:each) do
    @auto_scheduler = assign(:auto_scheduler, AutoScheduler.create!(
      :name => "Name",
      :settings => "MyText",
      :enabled => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
