require 'test_helper'

class VacancyMailerTest < ActionMailer::TestCase
  test "full" do
    mail = VacancyMailer.full
    assert_equal "Full", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "empty" do
    mail = VacancyMailer.empty
    assert_equal "Empty", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
