namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Jayanta Mondal",
                         email: "jmondal@kreeti.com",
                         password: "jmondal",
                         password_confirmation: "jmondal",
                         admin: true)
  end
end

