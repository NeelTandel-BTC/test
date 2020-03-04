class SendMailWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(time, user, show)
    mail(to: user.email, subject: "remainder for #{show.name}")
  end
end