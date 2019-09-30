class VacancyMailer < ApplicationMailer

  def full vacancy
    @vacancy = vacancy
    @greeting = "Hi"

    mail to: "to@example.org",
         subject: "Crowded station" 
  end

  def empty vacancy
    @vacancy = vacancy
    @greeting = "Hi"

    mail to: "to@example.org",
         subject: "Empty station"
  end
end
