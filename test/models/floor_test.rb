require 'test_helper'

class FloorTest < ActiveSupport::TestCase
  fixtures :floors, :buildings
  
  test "floor attributes must not be empty" do
     floor = Floor.new
     assert floor.invalid?
     assert floor.errors[:number].any?
     assert floor.errors[:code].any?
     assert floor.errors[:building].any?
   end
   
   test "floor must have a valid building_id foreign key" do
     floor = Floor.new(number: 1,
                       code: "ONE",
                       building: floors(:normal).building)
     assert floor.errors[:building].none?, "#{floors(:normal).building_id} should be valid"
     assert floor.errors[:code].none?
     assert floor.errors[:number].none?
   end
   
   test "must be greater than 0" do
     floor = Floor.new(code: "ONE",
                       building: floors(:normal).building)
                       
     floor.number = -1
     assert floor.invalid? "negative floor"
     assert_equal ["must be greater than 0"], floor.errors[:number]
     
     floor.number = 0
     assert floor.invalid? "zero floor"
     assert_equal ["must be greater than 0"], floor.errors[:number] 
     
     floor.number = 1
     assert floor.valid? "positive floor"
     floor.errors.full_messages.inspect
   end
end
