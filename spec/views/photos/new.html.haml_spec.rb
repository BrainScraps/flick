require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :url => "MyString",
      :desc => "MyText",
      :album_id => 1
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photos_path, "post" do
      assert_select "input#photo_url[name=?]", "photo[url]"
      assert_select "textarea#photo_desc[name=?]", "photo[desc]"
      assert_select "input#photo_album_id[name=?]", "photo[album_id]"
    end
  end
end
