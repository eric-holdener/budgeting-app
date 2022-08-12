# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.first || User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')
cash_flows = [
  {
    title: 'Computer Chair',
    description: 'Bought a chair from Herman Miller',
    account: 'Debit',
    amount: 1000,
    date: Time.now
  },
  {
    title: 'Paycheck',
    description: 'Got paid for work',
    account: 'Debit',
    amount: 2000,
    date: Time.now
  }
]

cash_flows.each do |cf_hash|
  user.cash_flows.create(cf_hash)
end