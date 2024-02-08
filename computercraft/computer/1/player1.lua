local monitor = peripheral.wrap("top")
monitor.setTextScale(0.5)
monitor.setBackgroundColor(colors.red)
monitor.clear()
color = 0
for x=4,11 do
    for y=2,9 do
        if color % 2 == 0 then
            monitor.setBackgroundColor(colors.black)
        else
            monitor.setBackgroundColor(colors.white)
        end
        color = color + 1
        monitor.setCursorPos(x,y)
        monitor.write(" ")
    end
    color = color + 1
end 

