
namespace :recurring do
  task init: :environment do
    CloneProcess.schedule!
  end
end
