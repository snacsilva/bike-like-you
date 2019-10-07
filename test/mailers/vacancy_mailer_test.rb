# frozen_string_literal: true

require 'test_helper'

class VacancyMailerTest < ActionMailer::TestCase
  test 'full' do
    mail = VacancyMailer.full
    assert_equal 'Full', mail.subject
    assert_equal ['bikelikeyou@gmail.com'], mail.to
    assert_equal ['bikelikeyou@gmail.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end

  test 'empty' do
    mail = VacancyMailer.empty
    assert_equal 'Empty', mail.subject
    assert_equal ['bikelikeyou@gmail.com'], mail.to
    assert_equal ['bikelikeyou@gmail.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end
end
