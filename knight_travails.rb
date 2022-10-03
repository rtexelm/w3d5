require_relative "./skeleton/lib/00_tree_node.rb"

class KnightPathFinder

    def self.valid_moves(pos)
        row, col = pos

        # unless !(row > 7 || col > 7 ) && !(row < 0 || col < 0)
        #     raise "Invalid position"
        # end



    end

    def initialize(position)
        @root_node = PolyTreeNode.new(position)
        @considered_positions = [position]
    end

    def new_move_positions(pos)
        KnightPathFinder.valid_moves(pos)

    end



end
