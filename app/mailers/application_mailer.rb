# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'bikelikeyou@gmail.com'
  layout 'mailer'
end
