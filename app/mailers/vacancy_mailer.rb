class VacancyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.vacancy_mailer.full.subject
  #
  def full
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.vacancy_mailer.empty.subject
  #
  def empty
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
