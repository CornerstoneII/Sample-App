require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "account_activationpassword_reset" do
    mail = UserMailer.account_activationpassword_reset
    assert_equal "Account activationpassword reset", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
