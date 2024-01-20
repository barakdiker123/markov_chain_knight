
# Table of Contents

1.  [Abstract](#orgb09b958)
2.  [Code](#org4c83b70)



<a id="orgb09b958"></a>

# Abstract

Here I am creating a simulation of a knight which starts from the corner
(0,0) and randomly moves uniformly from all possible knight moves


<a id="org4c83b70"></a>

# Code

Here is an simulation of the knight movement from the corner until he returns to the corner

    from random import choice
    def in_range(x: int):
        return x >= 0 and x <= 7
    
    def possible_moves_from_point(x: int, y: int) -> list:
        possible_moves = []
        if in_range(x + 2) and in_range(y + 1):
            possible_moves.append([x + 2, y + 1])
    
        if in_range(x + 2) and in_range(y - 1):
            possible_moves.append([x + 2, y - 1])
        if in_range(x - 2) and in_range(y + 1):
            possible_moves.append([x - 2, y + 1])
        if in_range(x - 2) and in_range(y - 1):
            possible_moves.append([x - 2, y - 1])
        if in_range(x + 1) and in_range(y + 2):
            possible_moves.append([x + 1, y + 2])
        if in_range(x + 1) and in_range(y - 2):
            possible_moves.append([x + 1, y - 2])
        if in_range(x - 1) and in_range(y + 2):
            possible_moves.append([x - 1, y + 2])
        if in_range(x - 1) and in_range(y - 2):
            possible_moves.append([x - 1, y - 2])
        return possible_moves
    
    
    def print_positions_from_array(array_point: list):
        arr = [[0 for i in range(8)] for j in range(8)]
        # for i in range(8):
        #    for j in range(8):
        #        arr[i][j] = 0
        for point in array_point:
            arr[point[0]][point[1]] = 1
        return arr
    
    
    def print_arr(arr):
        for i in range(8):
            for j in range(8):
                print(arr[i][j], end="")
            print()
    
    
    # print(possible_moves_from_point(2, 2))
    # print(choice(possible_moves_from_point(0, 0)))
    ## arr = print_positions_from_array([[1, 1], [1, 2]])
    ## print_arr(arr)
    #
    # arr = print_positions_from_array(possible_moves_from_point(2, 2))
    # print_arr(arr)
    
    
    def run_simulation():
        position = [0, 0]
        count = 0
        while True:
            position = choice(possible_moves_from_point(position[0], position[1]))
            # print(position)
            count += 1
            if position[0] == 0 and position[1] == 0:
                break
        return count
    
    
    # print(run_simulation())
    
    total_simulation = [run_simulation() for _ in range(300)]
    return sum(total_simulation) / len(total_simulation)

    191.47333333333333

