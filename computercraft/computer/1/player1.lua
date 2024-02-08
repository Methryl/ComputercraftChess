local monitor = peripheral.wrap("top")
local pieceApi = require("piece")

--settings
monitor.setTextScale(0.5)
monitor.setBackgroundColor(colors.red)
monitor.clear()

--pieces
local pieces = {}

local function placePieces()
    pieces.BPawn1 = piece.addPiece("rook","T",0,0,colors.black)
end


local function Board()
    board = {}
    color = 0
    for y=0,8 do
        board[y]={}
        for x=0,8 do
            cell = {}
            if color % 2 == 0 then
                cell.color = colors.gray
                cell.piece = piece.addPiece("rook","T",0,0,colors.black)
                board[y][x] = cell
            else
                cell.color = colors.white
                cell.piece = piece.addPiece("rook","T",0,0,colors.black)
                board[y][x] = cell
            end
            color = color + 1
        end
    end 
    return board
end

local board = Board()

local function draw()
    for x=4,11 do
        for y=2,9 do
            monitor.setCursorPos(x,y)
            monitor.setBackgroundColor(board[y-2][x-4].color)
            if(board[y-2][x-4].piece == nil) then
                monitor.write(" ")
            else
                monitor.write(board[y-2][x-4].piece.icon)
            end
        end
    end
end

draw()
