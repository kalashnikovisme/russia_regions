require 'test_helper'

include RussiaRegions

class RussiaRegionsTest < TestCase
  def test_name_list
    assert_equal 85, RussiaRegions.name_list.count
  end
end
