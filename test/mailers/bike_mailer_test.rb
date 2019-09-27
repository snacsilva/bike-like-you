# frozen_string_literal: true

require 'test_helper'

class BikeMailerTest < ActionMailer::TestCase
  test 'problem?' do
    mail = BikeMailer.have_a_problem
    assert_equal 'Have a problem', mail.subject
    assert_equal ['to@example.org'], mail.to
    assert_equal ['from@example.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end
end
