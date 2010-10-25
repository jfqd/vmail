REPORT_ACCOUNT    = %w(report@example.com)
WEBMASTER_ACCOUNT = %("example.com[Webmaster]" <webmaster@example.com>)

# For exception_notifier-plugin
ExceptionNotifier.exception_recipients = REPORT_ACCOUNT
ExceptionNotifier.sender_address       = WEBMASTER_ACCOUNT
ExceptionNotifier.email_prefix         = "[mail.example.com] vmail - Exception-Notifier "

ActionMailer::Base.logger = nil
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default_charset = "utf-8"
ActionMailer::Base.smtp_settings = {
  :address    => "mail.example.com",
  :port       => "25",
  :domain     => REPORT_ACCOUNT,
  :from       => REPORT_ACCOUNT
}