FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    image {File.open("#{Rails.root}/public/images/Screenshot_20190802-211159_2.png")}
    user
    group
  end
end