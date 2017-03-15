require 'rails_helper'

RSpec.describe "auto_schedulers/edit", :type => :view do
  before(:each) do
    @auto_scheduler = assign(:auto_scheduler, AutoScheduler.create!(
      :name => "MyString",
      :settings => "MyText",
      :enabled => false
    ))
  end

  it "renders the edit auto_scheduler form" do
    render

    assert_select "form[action=?][method=?]", auto_scheduler_path(@auto_scheduler), "post" do

      assert_select "input#auto_scheduler_name[name=?]", "auto_scheduler[name]"

      assert_select "textarea#auto_scheduler_settings[name=?]", "auto_scheduler[settings]"

      assert_select "input#auto_scheduler_enabled[name=?]", "auto_scheduler[enabled]"
    end
  end
end
