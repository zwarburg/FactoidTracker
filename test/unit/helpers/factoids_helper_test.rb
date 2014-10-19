require 'test_helper'

class FactoidsHelperTest < ActionView::TestCase

  def test_format_datetime
    #Todo - stub the Time zone to PST
    t = Time.new(2014, 10, 31, 2, 2, 2, "+02:00")
    assert_equal "10/30/14 5:02PM", format_datetime(t)
  end

end