local modem = peripheral.find("modem")

modem.open(1)
print(modem.isOpen(1))
