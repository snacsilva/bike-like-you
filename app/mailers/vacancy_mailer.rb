# frozen_string_literal: true

class VacancyMailer < ApplicationMailer
  def full(vacancy)
    @vacancy = vacancy
    @greeting = 'Hi'

    mail to: 'bikelikeyou@gmail.com',
         subject: 'Full station'
  end

  def empty(vacancy)
    @vacancy = vacancy
    @greeting = 'Hi'

    mail to: 'bikelikeyou@gmail.com',
         subject: 'Empty station'
  end
end
