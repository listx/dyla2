namespace :db do
  task populate: :environment do
    Card.destroy_all

    def random_cost
      (1..20).to_a.sample
    end

    20.times do
      Card.create(
        name: Faker::Name.first_name,
        cost: random_cost
      )
    end

  end
end
