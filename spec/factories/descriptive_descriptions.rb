FactoryGirl.define do
  factory :descriptive_description, class: 'Descriptive::Description' do
    definition "MyString"
    full "MyText"
    describable nil
    language_id 1
  end
end
