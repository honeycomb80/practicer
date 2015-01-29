require 'spec_helper'

describe "rubyqs/index" do
  before(:each) do
    assign(:rubyqs, [
      stub_model(Rubyq,
        :prompt_id => 1,
        :group_id => 2,
        :prompt1 => "Prompt1",
        :prompt2 => "Prompt2",
        :answer => "Answer",
        :linear => false
      ),
      stub_model(Rubyq,
        :prompt_id => 1,
        :group_id => 2,
        :prompt1 => "Prompt1",
        :prompt2 => "Prompt2",
        :answer => "Answer",
        :linear => false
      )
    ])
  end

  it "renders a list of rubyqs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Prompt1".to_s, :count => 2
    assert_select "tr>td", :text => "Prompt2".to_s, :count => 2
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
