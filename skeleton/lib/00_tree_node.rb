class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value)
        @parent = nil
        @children = [] # [b, c, d]
        @value = value # "A"
    end

    def parent=(node)
        if node == nil
            @parent = nil
        elsif @parent == nil
            @parent = node
            @parent.children << self
        else
            @parent.children.delete(self)
            @parent = node #if parent.nil?
            @parent.children << self
        end

    end

    def add_child(child_node) #"A" = "B"
        # call #parent=
        child_node.parent = self
    end

    def remove_child(child_node)
        raise "Not my kid!" unless @children.include?(child_node)
        child_node.parent = nil
    end

    def dfs(target_val) 
        if self.value == target_val
            return self
        end

        if self.children.empty?
            return nil
        end


        dfs_check = self.children.each do |child|
            dfs(child.value)
        end
    end

end
