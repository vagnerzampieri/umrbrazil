# encoding: UTF-8
namespace :create do
  desc "1 - Create type user"
  task :type_user => :environment do
    ['Admin UMRBrazil', 'Admin', 'Médico', 'Paciente', 'Enfermeiro', 'Recepcionista', 'Organização', 'Técnico'].each do |type|
      TypeUser.create(:name => type, :enabled => true)
    end
  end

  desc "2 - Create type telephone"
  task :type_telephone => :environment do
    %w[Residêncial Celular Trabalho].each do |type|
      TypeTelephone.create(:name => type, :enabled => true)
    end
  end

  desc "3 - Create user"
  task :user => :environment do
    type_user = TypeUser.where(name: 'Admin UMRBrazil').first
    account = Account.new(name: 'Homer Simpson')

    user = account.create_user(:login => "adminumrbrazil",
      :email => "admin@umrbrazil.com",
      :password => 'adminumrbrazil',
      :password_confirmation => 'adminumrbrazil',
      :type_user_id => type_user.id
    )
    account.user_id = user.id
    account.save
  end
end
