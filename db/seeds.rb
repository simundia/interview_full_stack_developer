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

scope1 = Scope.create!(name: 'BNP Paribas')
scope2 = Scope.create!(name: 'Crédit Agricole')

# 3. Create the resources
resource1 = Resource.create!(name: 'Webinar diversité et inclusion 1')
resource2 = Resource.create!(name: 'Webinar diversité et inclusion 2')
resource3 = Resource.create!(name: 'Webinar diversité et inclusion 3')
resource4 = Resource.create!(name: 'Webinar diversité et inclusion 4')
resource5 = Resource.create!(name: 'Webinar diversité et inclusion 5')
resource6 = Resource.create!(name: 'Webinar diversité et inclusion 6')
resource7 = Resource.create!(name: 'Webinar diversité et inclusion 7')
resource8 = Resource.create!(name: 'Webinar diversité et inclusion 8')
resource9 = Resource.create!(name: 'Webinar diversité et inclusion 9')
resource10 = Resource.create!(name: 'Webinar diversité et inclusion 10')

# 4. Create the users
user1 = User.create!(email: 'email@user1.com')
user2 = User.create!(email: 'email@user2.com')
user3 = User.create!(email: 'email@user3.com')
user4 = User.create!(email: 'email@user4.com')
user5 = User.create!(email: 'email@user5.com')

# 5. Create the seen_resources
seen_resource1 = SeenResource.create!(user_id: )

# 6. Create the scope_users
