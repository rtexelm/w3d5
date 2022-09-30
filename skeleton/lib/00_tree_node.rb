class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value)
        @parent = nil
        @children = [] # [b, c, d]
        @value = value # "A"
    end

    def parent=(node)
        if parent == nil
            @parent = node 
            @parent.children << self
        else
            @parent.children.delete(self)
            @parent = node #if parent.nil?
            @parent.children << self
        end
        
    end


end
