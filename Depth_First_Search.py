from collections import defaultdict
# Function to perform DFS
state1 = 'A'
state2 = 'D'
state3 = 'E'
state4 = 'C'
state5 = 'B'
tree = [state1,state2,state3,state4,state5]
#print(tree)
def dfs(graph, start):
    visited = set()
    stack = [start]

    while stack:
        node = stack.pop()
        if node not in visited:
            print(node, end=" ")
            visited.add(node)
            stack.extend(neighbor for neighbor in graph[node] if neighbor not in visited)
goal = tree[0]
n = 0
print("\n\nDFS Traversal: ")
print(tree)
while(goal != state5):
    if(n<4):
        print(tree[n],tree[n+1])
        goal = tree[n]
        n=n+1

#if __name__ == "__main__":
    # Example graph represented as an adjacency list
graph = defaultdict(list)
graph[0] = [1, 2]
graph[1] = [2]
graph[2] = [0, 3]
graph[3] = [3]

print("\nDFS traversal:")
dfs(graph, 2)
