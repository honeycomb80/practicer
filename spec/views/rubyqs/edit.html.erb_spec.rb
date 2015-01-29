require 'spec_helper'

describe "rubyqs/edit" do
  before(:each) do
    @rubyq = assign(:rubyq, stub_model(Rubyq,
      :prompt_id => 1,
      :group_id => 1,
      :prompt1 => "MyString",
      :prompt2 => "MyString",
      :answer => "MyString",
      :linear => false
    ))
  end

  it "renders the edit rubyq form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rubyq_path(@rubyq), "post" do
      assert_select "input#rubyq_prompt_id[name=?]", "rubyq[prompt_id]"
      assert_select "input#rubyq_group_id[name=?]", "rubyq[group_id]"
      assert_select "input#rubyq_prompt1[name=?]", "rubyq[prompt1]"
      assert_select "input#rubyq_prompt2[name=?]", "rubyq[prompt2]"
      assert_select "input#rubyq_answer[name=?]", "rubyq[answer]"
      assert_select "input#rubyq_linear[name=?]", "rubyq[linear]"
    end
  end
end
