require 'test_helper'

class LayoutTest < ActiveSupport::TestCase
  fixtures :floors, :buildings, :layouts
  
    test "layout attributes must not be empty" do
     layout = Layout.new
     assert layout.invalid?
     assert layout.errors[:description].any?
     assert layout.errors[:file_location].any?
     assert layout.errors[:floor].any?
   end
end
