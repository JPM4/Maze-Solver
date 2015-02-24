def maze_solver
  maze = File.readlines("maze1.txt").map { |line| line.chomp }
  puts maze
  start_row = nil
  maze.each_with_index do |segment, idx|
    start_row = idx if segment.split("").include?("S")
  end

  start_col = nil

  maze[start_row].each_char.with_index do |char, idx|
    start_col = idx if char == "S"
  end

  start_pos = maze[start_row][start_col]

  p start_pos

end

maze_solver
