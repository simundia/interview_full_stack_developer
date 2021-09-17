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
seen_resource1 = SeenResource.create!(user_id: user1.id, resource_id: resource10.id, count: 3)
seen_resource2 = SeenResource.create!(user_id: user2.id, resource_id: resource9.id, count: 2)
seen_resource3 = SeenResource.create!(user_id: user3.id, resource_id: resource8.id, count: 1)
seen_resource4 = SeenResource.create!(user_id: user4.id, resource_id: resource7.id, count: 2)
seen_resource5 = SeenResource.create!(user_id: user5.id, resource_id: resource4.id, count: 7)
seen_resource6 = SeenResource.create!(user_id: user1.id, resource_id: resource2.id, count: 2)
seen_resource7 = SeenResource.create!(user_id: user2.id, resource_id: resource4.id, count: 3)
seen_resource8 = SeenResource.create!(user_id: user3.id, resource_id: resource7.id, count: 2)
seen_resource9 = SeenResource.create!(user_id: user4.id, resource_id: resource3.id, count: 1)
seen_resource10 = SeenResource.create!(user_id: user5.id, resource_id: resource9.id, count: 3)

# 6. Create the scope_users
scope_user_1 = ScopeUser.create!(scope_id: scope1.id, user_id: user1.id)
scope_user_2 = ScopeUser.create!(scope_id: scope2.id, user_id: user2.id)
scope_user_3 = ScopeUser.create!(scope_id: scope1.id, user_id: user3.id)
scope_user_4 = ScopeUser.create!(scope_id: scope2.id, user_id: user4.id)
scope_user_5 = ScopeUser.create!(scope_id: scope1.id, user_id: user5.id)
