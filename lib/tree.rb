module Tree
  module InstanceMethods
    def root?
      self.depth.zero?
    end

    def root
      node = self
      node = node.parent while node.parent_id
      node
    end

    def ancestors
      node, nodes = self, []
      nodes << node = node.parent while node.parent_id
      nodes
    end
    
    def self_and_siblings
      parent ? parent.children : self.class.roots
    end
    
    def siblings
      siblings = self_and_siblings.dup
      siblings.shift
      siblings
    end
    
    private   
      def set_depth
        unless self.parent_id.blank?
          parent = self.parent
          self.depth = parent.depth + 1
          self.display_order = parent.children.count
          save
        end
      end
          
  end
  
  def self.included klass
    klass.class_eval do
      belongs_to :parent, 
                 :class_name => name, 
                 :foreign_key => :parent_id
      
      many :children, 
          :as => :parent, 
          :class_name => name, 
          :foreign_key => :parent_id
               
      key :parent_id, ObjectId
      key :parent_type, String
      key :depth, Integer, :default => 0
      
      
      after_create :set_depth
      
      class_eval <<-EOV
        def self.roots
          find(:all, :conditions => {:parent_id=>nil}, :order => "depth")
        end

        def self.root
          find(:first,:conditions => {:parent_id=>nil},:order => "depth")
        end
      EOV
      
      include InstanceMethods
    end
  end
end