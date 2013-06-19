require 'spec_helper'

describe "documents/new.html.erb" do
  before(:each) do
    assign(:document, stub_model(Document,
      :titre => "MyString",
      :content => "MyString",
      :user_id => "MyString",
      :integer => "MyString"
    ).as_new_record)
  end

  it "renders new document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => documents_path, :method => "post" do
      assert_select "input#document_titre", :name => "document[titre]"
      assert_select "input#document_content", :name => "document[content]"
      assert_select "input#document_user_id", :name => "document[user_id]"
      assert_select "input#document_integer", :name => "document[integer]"
    end
  end
end
