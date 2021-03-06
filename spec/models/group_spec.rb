require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Group do
  it "should save description" do
    g = Group.create(:name => "Test",
                     :description => "Testing description",
                     :_founder => Factory(:user).slug)

    g.reload.description.should be_present
  end

  it "should have activity_object" do
    Factory(:group).activity_object.should be_present
  end

  it "should save tag list" do
    g = Factory(:group)

    g.tag_list = "bla, ble"
    g.save!

    g.reload.tag_list.should be_present
  end
end

