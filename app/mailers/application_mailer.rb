class ApplicationMailer < ActionMailer::Base
  default :from => "notifications@hupi.fr"
  layout 'mailer'

  def status
    mail(to: "notifications-plateforme@hupi.fr", subject: "Status de #{ENV["SERVER_HOST"]}")
  end
end
