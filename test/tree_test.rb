require 'test_helper'

class TraversalTest < Test::Unit::TestCase
  context 'A tree instance' do
    setup do
      Doc.destroy_all
      @doc  = Doc.create(:name=>"Hoge")
    end
    
    should "have 0 depth" do
      assert_equal 0, @doc.depth
    end
    
    should "have the correct assoc" do
      assert_not_nil Doc.associations["parent"]
    end
    
    should "belong to parent" do
      assert_equal :belongs_to, Doc.associations["parent"].type
    end
    
    should "respond to" do
      [:ancestors,:children,:root,:root?].each {|m| assert @doc.respond_to?(m) }
    end
    
  end
end
