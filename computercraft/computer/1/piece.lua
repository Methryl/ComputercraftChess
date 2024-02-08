function addPiece(name, icon, x, y, color)
    piece = {}
    piece.name = name
    piece.icon = icon
    piece.x = x
    piece.y = y
    piece.color = color
    --piece.behaviour = behaviour
    piece.firstMove = false
    return piece
end

local function pawnBehaviour()
    if piece.color == colors.black then
        if not piece.firstMove then
            if target <= piece.y + 2 then
                piece.y = piece.y + 2
            end
        else
            piece.y = piece.y + 1
        end
    else
        piece.y = piece.y - 1
    end
end

