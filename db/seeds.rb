# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w[Admin Médico Paciente Enfermeiro Setor].each do |type|
  TypeUser.create(:name => type, :enabled => true)
end

%w[Residêncial Celular Trabalho].each do |type|
  TypeTelephone.create(:name => type, :enabled => true)
end

type_user = TypeUser.find 1
account = Account.create

user = User.new(:login => 'admin',
  :name => 'Admin',
  :email => 'admin@umrbrazil.com',
  :password => 'adminumrbrazil',
  :password_confirmation => 'adminumrbrazil',
  :account_id => account.id,
  :type_user_id => type_user.id
)
user.save
