class ReminderMailer < ApplicationMailer
  def new_order_email(show)
    @show = show

    mail(to: user.email, subject: "remainder for #{show.name}")
  end
end
