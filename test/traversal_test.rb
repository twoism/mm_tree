require 'test_helper'

class TraversalTest < Test::Unit::TestCase
  context 'A tree instance' do
    setup do
      Doc.destroy_all
      @root = Doc.create(:name=>"root")
      10.times do |n|
        d = n.zero? ? @root : Doc.find_by_name("doc #{n-1}")
        d.children << Doc.create(:name=>"doc #{n}")
        d.children << Doc.create(:name=>"sibling for doc #{n}")
        d.children << Doc.create(:name=>"sibling 2 for doc #{n}")
        d.save
      end
      @root= Doc.find_by_name("root")
      @last = Doc.find_by_name("doc 9")
    end
    
    should "have children" do
      assert @root.children.count > 0 
    end
    
    should "find root" do
      assert_equal(@root, @last.root)
    end
    
    should "have corrent number of ancestors" do
      assert_equal 10, @last.ancestors.count
    end
    
    should "have siblings" do
      assert_equal("sibling for doc 9", @last.siblings.first.name)
    end
    
  end
end
