require 'test_helper'

class BuildingTest < ActiveSupport::TestCase
  fixtures :buildings
  
   test "building attributes must not be empty" do
     building = Building.new
     assert building.invalid?
     assert building.errors[:name].any?
     assert building.errors[:address].any?
     assert building.errors[:postal_code].any?
     assert building.errors[:image_url].any?
   end
   
  def new_building(image_url)
    Building.new(name: "Name",
                 address: "33 Rowland, Toronto, ON, Canada",
                 postal_code: "R6K 9K2",
                 image_url: image_url)
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.JpG
             http:\\a.b.c/x/y/z/fred.gif}
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |name|
      assert new_building(name).valid?, "#{name} should be valid"
    end
    bad.each do |name|
      assert new_building(name).invalid?, "#{name} shouldn't be valid"
    end
  end
  
  test "building not valid without a unique name" do
    building = Building.new(name: buildings(:sb1).name,
                            address: "xxx",
                            postal_code: "yyy",
                            image_url: "zzz.gif")
    assert building.invalid?
    assert_equal ["has already been taken"], building.errors[:name]
  end
  
    test "building not valid without a unique address" do
    building = Building.new(address: buildings(:sb2).address,
                            name: "aaa",
                            postal_code: "bbb",
                            image_url: "zzz.gif")
    assert building.invalid?
    assert_equal ["has already been taken"], building.errors[:address]
  end
  
    test "building not valid without a postal_code" do
    building = Building.new(postal_code: buildings(:sb3).postal_code,
                            address: "ddd",
                            name: "eee",
                            image_url: "zzz.gif")
    assert building.invalid?
    assert_equal ["has already been taken"], building.errors[:postal_code]
  end
end
