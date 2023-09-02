import heapq
def manhattan_distance(state):
    distance = 0
    for i in range(3):
        for j in range(3):
            if state[i][j] != 0:
                goal_row, goal_col = divmod(state[i][j] - 1, 3)
                distance += abs(i - goal_row) + abs(j - goal_col)
    return distance
def get_neighbors(state):
    neighbors = []
    zero_row, zero_col = 0, 0
    for i in range(3):
        for j in range(3):
            if state[i][j] == 0:
                zero_row, zero_col = i, j
                break

    moves = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    for dr, dc in moves:
        new_row, new_col = zero_row + dr, zero_col + dc
        if 0 <= new_row < 3 and 0 <= new_col < 3:
            new_state = [row[:] for row in state]
            new_state[zero_row][zero_col], new_state[new_row][new_col] = new_state[new_row][new_col], new_state[zero_row][zero_col]
            neighbors.append(new_state)
    return neighbors
def solve_8_puzzle(initial_state):
    queue = []
    heapq.heappush(queue, (0 + manhattan_distance(initial_state), initial_state, 0, None))
    visited = set()

    while queue:
        _, state, cost, prev_state = heapq.heappop(queue)

        if tuple(map(tuple, state)) in visited:
            continue

        visited.add(tuple(map(tuple, state)))

        if state == goal_state:
            return cost, state

        for neighbor in get_neighbors(state):
            heapq.heappush(queue, (cost + 1 + manhattan_distance(neighbor), neighbor, cost + 1, state))

    return None
if __name__ == '__main__':
    initial_state = [
        [7, 2, 3],
        [0, 5, 6],
        [1, 4, 8]
    ]
    goal_state = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 0]
    ]

    result = solve_8_puzzle(initial_state)
    if result:
        cost, final_state = result
        print(f"Solution found in {cost} steps:")
        for row in final_state:
            print(' '.join(map(str, row)))
    else:
        print("No solution found.")