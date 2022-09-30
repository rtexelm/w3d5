class PolyTreeNode
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    def parent=(parent)
        @parent = parent
        @parent.children << self
    end
end