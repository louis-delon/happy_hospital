FactoryBot.define do
  factory :shift do
    start_date { Time.now }
    worker { nil }
  end
end
