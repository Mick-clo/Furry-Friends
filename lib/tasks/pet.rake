namespace :pet do
  desc "TODO"
  task update_all: :environment do
    HungryJob.perform_later
    BoredomJob.perform_later
    HealthJob.perform_later
  end
end
