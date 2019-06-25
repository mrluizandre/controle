require 'test_helper'

class NotifierMailerTest < ActionMailer::TestCase
  test "below_minimum_stock" do
    mail = NotifierMailer.below_minimum_stock
    assert_equal "Below minimum stock", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
