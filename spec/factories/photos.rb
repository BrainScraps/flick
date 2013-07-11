# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    url "MyString"
    desc "MyText"
    album_id 1
  end
end
