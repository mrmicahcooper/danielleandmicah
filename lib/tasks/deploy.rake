namespace :deploy do
  desc "deploy to production on Heroku.com"
  task production: :environment do
    Paratrooper::Deploy.new('danielleandmicah')
  end
end
