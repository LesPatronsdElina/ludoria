options = { forward_emails_to: 'intercepted_emails@domain.com' }
if Rails.env.production?
  interceptor = MailInterceptor::Interceptor.new(options)
  ActionMailer::Base.register_interceptor(interceptor)
end
