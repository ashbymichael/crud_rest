10.times do
  Thing.create(name: Faker::Company.name, description: Faker::Company.bs)
end
