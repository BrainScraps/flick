require 'spec_helper'

describe "photos/edit" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :url => "MyString",
      :desc => "MyText",
      :album_id => 1
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do
      assert_select "input#photo_url[name=?]", "photo[url]"
      assert_select "textarea#photo_desc[name=?]", "photo[desc]"
      assert_select "input#photo_album_id[name=?]", "photo[album_id]"
    end
  end
end
