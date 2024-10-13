#Small program to decode commonly encountered XOR encryptions
def xor_bytes(data, key):
    return bytes([d ^ k for d, k in zip(data, key)])

def load(hex_string):
    return bytes.fromhex(hex_string)

data = load("replacethiswiththedatatobedecrypted")
key = load("replacethiswiththexorkey")

decrypted = xor_bytes(data, key)
print(decrypted.decode('utf-8'))
