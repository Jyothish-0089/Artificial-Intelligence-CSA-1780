board = [0,1,0,1,3,1,3,0,3]
n = 0
i = 0
board[4] = '_'
board[6] = '_'
board[8] = '_'
def print_board():
    print(board[0],board[1],board[2])
    print(board[3],board[4],board[5])
    print(board[6],board[7],board[8])
print_board()
print("X's turn \n")
box = int(input("Enter where you want to place '1': "))
if(box == 4):
    board[4]=1
    print("\nX wins!!")
else:
    print("\nTie game")
print_board()