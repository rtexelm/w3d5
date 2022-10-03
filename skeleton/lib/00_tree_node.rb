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


    #
    def dfs(target_val) # "d".dfs("d")
        return self if self.value == target_val

        return nil if self.children.empty?

        @children.each do |child| #["d", "e"]
            child_dfs = child.dfs(target_val) # b.dfs(d)
            if !child_dfs.nil?
                return child_dfs
            end
        end

        return nil
    end

    def bfs(target_val)
        bfs_arr = [self]
       

        until bfs_arr.empty?
            node = bfs_arr.shift
            return node if node.value == target_val
            bfs_arr += node.children
        end

        return nil
    end
end
