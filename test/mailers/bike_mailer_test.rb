# frozen_string_literal: true

require 'test_helper'

class BikeMailerTest < ActionMailer::TestCase
  test 'problem?' do
    mail = BikeMailer.have_a_problem
    assert_equal 'Have a problem', mail.subject
    assert_equal ['bikelikeyou@gmail.com'], mail.to
    assert_equal ['bikelikeyou@gmail.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end
end
