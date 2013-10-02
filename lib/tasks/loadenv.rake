namespace :env do
  task staging: :environment do
    LoadEnv.new('staging').execute
  end
  task production: :environment do
    LoadEnv.new('production').execute
  end
end
