ActionMailer::Base.smtp_settings = {
  user_name: 'apikey',
  password: ENV['SENDGRID_API_KEY'],
  domain: 'ludoria.fr',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain
}
