FactoryBot.define do
  factory :transaction do
    processor { ["Adyen", "Braintree", "Stripe"].sample }
    status { "Authorized" }

    trait :charge do
      status { "Captured" }
    end

    trait :refund do
      status { "Refunded" }
    end

    trait :monthly do
      amount { "$9.99" }
      description { "Monthly Sub" }
    end

    trait :yearly do
      amount { "$99.99" }
      description { "Yearly Sub" }
    end

    trait :gift do
      amount { "$39.99" }
      description { "Gift Card" }
    end

    factory :monthly_refund, parent: :transaction do
      monthly
      refund
      description { "Monthly Sub Refund" }
    end

    factory :yearly_refund, parent: :transaction do
      monthly
      refund
      description { "Yearly Sub Refund" }
    end
  end
end
