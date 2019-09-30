# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/bike_mailer
class BikeMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/bike_mailer/problem?
  def problem?
    BikeMailer.problem?
  end
end
