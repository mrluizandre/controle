require 'test_helper'

class ShoppingListMailerTest < ActionMailer::TestCase
  test "below_minimum" do
    mail = ShoppingListMailer.below_minimum
    assert_equal "Below minimum", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
