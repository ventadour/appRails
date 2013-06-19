require 'spec_helper'

describe "documents/edit.html.erb" do
  before(:each) do
    @document = assign(:document, stub_model(Document,
      :titre => "MyString",
      :content => "MyString",
      :user_id => "MyString",
      :integer => "MyString"
    ))
  end

  it "renders the edit document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => documents_path(@document), :method => "post" do
      assert_select "input#document_titre", :name => "document[titre]"
      assert_select "input#document_content", :name => "document[content]"
      assert_select "input#document_user_id", :name => "document[user_id]"
      assert_select "input#document_integer", :name => "document[integer]"
    end
  end
end
