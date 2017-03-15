require 'rails_helper'

RSpec.describe "auto_schedulers/new", :type => :view do
  before(:each) do
    assign(:auto_scheduler, AutoScheduler.new(
      :name => "MyString",
      :settings => "MyText",
      :enabled => false
    ))
  end

  it "renders new auto_scheduler form" do
    render

    assert_select "form[action=?][method=?]", auto_schedulers_path, "post" do

      assert_select "input#auto_scheduler_name[name=?]", "auto_scheduler[name]"

      assert_select "textarea#auto_scheduler_settings[name=?]", "auto_scheduler[settings]"

      assert_select "input#auto_scheduler_enabled[name=?]", "auto_scheduler[enabled]"
    end
  end
end
