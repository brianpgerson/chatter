FactoryGirl.define do
  factory :goal do
    body { Faker::Lorem.sentence }


    factory :too_long do
      body { "Woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof " }
    end

  end
end
