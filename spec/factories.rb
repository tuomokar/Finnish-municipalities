FactoryGirl.define do
  factory :region_en, class: Region do
    I18n.locale = :en
    name "Southwest Finland"
    area 1000.0
    population 15000
    description "Southwest Finland's capital is Turku"
  end

  factory :region_fi, class: Region do
    I18n.locale = :fi
    name "Pohjois-Karjala"
    area 500.0
    population 20000
    description "Pohjois-Karjala is the northern part of the area of Karjala"
  end
end