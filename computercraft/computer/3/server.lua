local ws = assert(http.websocket("ws://192.168.0.10:5656"))
local modem = peripheral.find("modem")

modem.open(1)
print(modem.isOpen(1))

