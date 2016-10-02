FactoryGirl.define do

  factory :product, class: Product do
    name "Blue Cat"
    description "A blue cat"
    image_url ""
    colour "Blue"
    price "500.0"
  end
  
end