# encoding: UTF-8
namespace :create do
  desc "Create type user"
  task :type_user => :environment do
    %w[Admin Médico Paciente Enfermeiro Recepcionista Organização Técnico].each do |type|
      TypeUser.create(:name => type, :enabled => true)
    end
  end

  task :type_telephone => :environment do
    %w[Residêncial Celular Trabalho].each do |type|
      TypeTelephone.create(:name => type, :enabled => true)
    end
  end

  task :user => :environment do
    type_user = TypeUser.find 1
    account = Account.create

    user = User.new(:login => "adminumrbrazil",
      :name => 'Admin UMRBrazil',
      :email => "admin@umrbrazil.com",
      :password => 'adminumrbrazil',
      :password_confirmation => 'adminumrbrazil',
      :account_id => account.id,
      :type_user_id => type_user.id
    )
    user.save
  end
end
