block_size = 16
buff_size = 3 * block_size
num_rounds = 18
S = [
    41, 46, 67, 201, 162, 216, 124, 1, 61, 54, 84, 161, 236, 240, 6,
    19, 98, 167, 5, 243, 192, 199, 115, 140, 152, 147, 43, 217, 188,
    76, 130, 202, 30, 155, 87, 60, 253, 212, 224, 22, 103, 66, 111, 24,
    138, 23, 229, 18, 190, 78, 196, 214, 218, 158, 222, 73, 160, 251,
    245, 142, 187, 47, 238, 122, 169, 104, 121, 145, 21, 178, 7, 63,
    148, 194, 16, 137, 11, 34, 95, 33, 128, 127, 93, 154, 90, 144, 50,
    39, 53, 62, 204, 231, 191, 247, 151, 3, 255, 25, 48, 179, 72, 165,
    181, 209, 215, 94, 146, 42, 172, 86, 170, 198, 79, 184, 56, 210,
    150, 164, 125, 182, 118, 252, 107, 226, 156, 116, 4, 241, 69, 157,
    112, 89, 100, 113, 135, 32, 134, 91, 207, 101, 230, 45, 168, 2, 27,
    96, 37, 173, 174, 176, 185, 246, 28, 70, 97, 105, 52, 64, 126, 15,
    85, 71, 163, 35, 221, 81, 175, 58, 195, 92, 249, 206, 186, 197,
    234, 38, 44, 83, 13, 110, 133, 40, 132, 9, 211, 223, 205, 244, 65,
    129, 77, 82, 106, 220, 55, 200, 108, 193, 171, 250, 36, 225, 123,
    8, 12, 189, 177, 74, 120, 136, 149, 139, 227, 99, 232, 109, 233,
    203, 213, 254, 59, 0, 29, 57, 242, 239, 183, 14, 102, 88, 208, 228,
    166, 119, 114, 248, 235, 117, 75, 10, 49, 68, 80, 180, 143, 237,
    31, 26, 219, 153, 141, 51, 159, 17, 131, 20
]


def printMD2(md2):
    num_blocks = len(md2) // block_size
    for i in range(num_blocks):
        print("B"+str(i+1), end="\t")
        for j in range(block_size):
            print(md2[i*block_size+j], end="\t")
        print()


def MD2(msg):

    # Creating ASCII Array
    msg_arr = [ord(c) for c in msg]

    # Padding
    padding_space = block_size - (len(msg_arr) % block_size)
    padding = padding_space * [padding_space]
    msg_arr.extend(padding)

    # Generating and adding checksum
    checksum = block_size * [0]
    num_blocks = len(msg_arr) // block_size
    last_check = 0

    for i in range(num_blocks):
        for j in range(block_size):
            msg_byte = msg_arr[i*block_size+j]
            last_check = S[msg_byte ^ last_check] ^ checksum[j]
            checksum[j] = last_check

    msg_arr.extend(checksum)
    num_blocks += 1

    # Message Digest Initialisation
    md2_digest = buff_size * [0]

    # Processing the message
    for i in range(num_blocks):

        # Replace message block in 2nd section of md2 digest
        # Fill 3rd section with XOR of 1st section and 2nd section
        for j in range(block_size):
            md2_digest[block_size+j] = msg_arr[i*block_size+j]
            md2_digest[2*block_size +
                       j] = md2_digest[j] ^ md2_digest[block_size+j]

        last_hash = 0

        # Encrypt all three section given rounds
        for k in range(num_rounds):
            for l in range(buff_size):
                last_hash = md2_digest[l] ^ S[last_hash]
                md2_digest[l] = last_hash
            last_hash = (last_hash+k) % len(S)

    # Output String generation
    md2_hash = "".join(map(lambda x: format(x,'02x'), md2_digest[:16]))

    return md2_hash

test_str = [
    "",
    "a",
    "abc",
    "message digest",
    "abcdefghijklmnopqrstuvwxyz",
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789",
    "12345678901234567890123456789012345678901234567890123456789012345678901234567890"
]

ans_str = [
    "8350e5a3e24c153df2275c9f80692773",
    "32ec01ec4a6dac72c0ab96fb34c0b5d1",
    "da853b0d3f88d99b30283a69e6ded6bb",
    "ab4f496bfb2a530b219ff33031fe06b0",
    "4e8ddff3650292ab5a4108c3aa47940b",
    "da33def2a42df13975352846c30338cd",
    "d5976f79d83d3a0dc9806c3c66f3efd8"
]

count = 0
for test in test_str:
    print("\n--------------------------------------------------------------------------------------------")
    md2 = MD2(test)
    print('Calculated MD2("'+ test +'") = ' + md2)
    print('Original MD2("'+ test +'")   = ' + ans_str[count])
    print('Matching: ', str(md2) == str(ans_str[count]))
    print("--------------------------------------------------------------------------------------------\n")
    count += 1