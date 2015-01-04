# == Schema Information
#
# Table name: factoids
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  description  :text
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  pivotal_link :string(255)
#

# Read about factories at https://github.com/thoughtbot/factory_girl
#
FactoryGirl.define do
  factory :factoid do
    title Faker::Name.title
    description Faker::Lorem.sentence
    name User.all.sample.full_name
  end
end
