require_relative "./skeleton/lib/00_tree_node.rb"

class KnightPathFinder

    attr_reader :considered_positions

    def self.valid_moves(pos)
        row, col = pos

        vld_moves = []

        potential_moves = [[1,2], [1,-2], [-1, 2], [-1, -2], [2, 1], [-2, 1], [-2, -1], [2, -1]]

        potential_moves.each do |sub|
            x, y = sub
            next_r = row + x
            next_c = col + y
            vld_moves << [next_r, next_c] if (next_r > 0 && next_c > 0) && (next_r < 7 && next_c < 7)
        end

        vld_moves
        # unless !(row > 7 || col > 7 ) && !(row < 0 || col < 0)
        #     raise "Invalid position"
        # end
    end

    def initialize(position)
        @root_node = PolyTreeNode.new(position)
        @considered_positions = [position]
    end

    def new_move_positions(pos)
        valid_moves = KnightPathFinder.valid_moves(pos)

        new_positions = []
        valid_moves.each do |m|
            new_positions << m if !@considered_positions.include?(m)

        end

        @considered_positions += new_positions
        new_positions
    end

end


p k = KnightPathFinder.new([0, 0])
p k.new_move_positions([1, 1])
p k.considered_positions
p k.new_move_positions([4, 4])
p k.considered_positions
