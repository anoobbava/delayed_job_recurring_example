
class CloneProcess
  include Delayed::RecurringJob
  run_every 5.minutes

  def perform
    UserInformationBackup.intiate_backup
  end
end
