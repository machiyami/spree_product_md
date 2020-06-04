require "spree/testing_support/factories"

FactoryBot.modify do
  factory :base_product, class: Spree::Product do
    trait :with_markdown_description do
      markdown_description { '# H1' }
    end
  end
end
