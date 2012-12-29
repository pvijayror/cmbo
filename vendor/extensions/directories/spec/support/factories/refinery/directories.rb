
FactoryGirl.define do
  factory :directory, :class => Refinery::Directories::Directory do
    sequence(:prefix) { |n| "refinery#{n}" }
  end
end

