# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# resources, seen_resources, users, scope_list_memberships, scopes

# 1. Clean the DB
Scope.destroy_all
Resource.destroy_all
User.destroy_all
SeenResource.destroy_all
ScopeUser.destroy_all

# 2. Create the scopes
Scope.create!(name: 'BNP Paribas 2021')
Scope.create!(name: 'Crédit Agricole 2021')

# 3. Create the resources
10.times { |i| Resource.create!(name: "Webinar diversité et inclusion #{i + 1}") }

# 4. Create the users
5.times { |i| User.create!(email: "email@user#{i + 1}.com") }

# 5. Create the seen_resources
Array.new(2) do
  User.all.find_each { |user| SeenResource.create!(user_id: user.id, resource_id: Resource.all.sample.id, count: 1 + rand(3))}
end

# 6. Create the scope_users
Array.new(2) do
  User.all.find_each { |user| ScopeUser.create!(scope_id: Scope.all.sample.id, user_id: user.id) }
end
