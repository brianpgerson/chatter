FactoryGirl.define do
  factory :message do
    body { Faker::Lorem.sentence }


    factory :too_long do
      body { "Woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof " }
    end

    factory :no_body do
      body { "" }
    end

  end
end
