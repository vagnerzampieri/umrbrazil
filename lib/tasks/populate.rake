# encoding: UTF-8
namespace :create do
  desc "4 - Populate"
  task :populate => :environment do
    puts "Populate ..."
    type_user = TypeUser.where(name: 'Paciente').first
    account = Account.new
    anamnese = account.create_anamnese(
      blood_type: 'O',
      rh_factor: '+',
      weight: 120.0,
      height: 180.0,
      sex: 'Masculino',
      blood_pressure: '120x80',
      smoking: false,
      drug_list: 'alcohol',
      allergy_list: 'trabalho, fazer qualquer coisa'
    )
    user = account.create_user(
      login: "homersimpson",
      email: "homer@simpson.com",
      password: 'simpsons',
      password_confirmation: 'simpsons',
      type_user_id: type_user.id
    )
    account.anamnese_id = anamnese.id
    account.user_id = user.id
    account.save

  end
end