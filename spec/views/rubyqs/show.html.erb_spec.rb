require 'spec_helper'

describe "rubyqs/show" do
  before(:each) do
    @rubyq = assign(:rubyq, stub_model(Rubyq,
      :prompt_id => 1,
      :group_id => 2,
      :prompt1 => "Prompt1",
      :prompt2 => "Prompt2",
      :answer => "Answer",
      :linear => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Prompt1/)
    rendered.should match(/Prompt2/)
    rendered.should match(/Answer/)
    rendered.should match(/false/)
  end
end
