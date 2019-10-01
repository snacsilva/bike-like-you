# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/vacancy_mailer
class VacancyMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/vacancy_mailer/full
  def full
    VacancyMailer.full
  end

  # Preview this email at http://localhost:3000/rails/mailers/vacancy_mailer/empty
  def empty
    VacancyMailer.empty
  end
end
