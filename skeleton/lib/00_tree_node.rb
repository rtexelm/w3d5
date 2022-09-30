class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value)
        @parent = nil
        @children = [] # [b, c, d]
        @value = value # "A"
    end

    def parent=(node)
        # if parent == nil
        @parent = node
        @parent.children << self
        # if node != @parent do @parent.children.pop
        # 
    end


end
