import socket
opfile = open("181IT113_IT352_P4_Output_server.txt", "a+")


def server_program():
    # get the hostname
    host = socket.gethostname()
    port = 5000
    server_socket = socket.socket()
    server_socket.bind((host, port))
    server_socket.listen(1)
    # accept new connection
    conn, address = server_socket.accept()
    p = 89
    print("p chosen by third party: ", p)
    opfile.write("p chosen by third party: %d\n" % p)
    q = 97
    print("q chosen by third party: ", q)
    opfile.write("q chosen by third party: %d\n" % q)
    n = p*q
    print("Calculated value of n: ", n)
    opfile.write("Calculated value of n: %d\n" % n)
    print("Connection from: ", address)
    address = str(address)
    opfile.write("Connection from: %s\n" % address)

    c1 = 1
    c2 = 0

    final = "VERIFIED"
    print("***********************************************")
    opfile.write("***********************************************\n")

    case = 0
    while case < 2:
        if case == 0:
            c = c1
        elif case == 1:
            c = c2
        print("\nRound ", case+1, ":")
        opfile.write("\nRound %d:\n" % (case+1))

        print("Challenge, c : ", c)
        opfile.write("Challenge, c : %d\n " % c)
        v = int(conn.recv(1024).decode())
        print("Public key of claimant received: ", v)
        opfile.write("Public key of claimant received: %d\n" % v)
        # send an acknowledgment of received public key
        conn.send(str(1).encode())
        # receive witness x value
        x = int(conn.recv(1024).decode())
        print("Witness from claimant received: ", x)
        opfile.write("Witness from claimant received: %d \n" % x)
        # send challenge to claimant
        conn.send(str(c).encode())

        y = int(conn.recv(1024).decode())
        print("Response from claimant receieved: ", y)
        opfile.write("Response from claimant receieved: %d\n" % y)

        y2 = (y*y) % n
        print("(y*y mod n) = ", y2)
        opfile.write("(y*y mod n) = %d\n " % y2)

        xvc = (x * (pow(v, c))) % n
        print("((x* v^c) mod n) = ", xvc)
        opfile.write("((x* v^c) mod n) = %d \n" % xvc)

        if y2 == xvc:
            print("User passes Fiat Shamir Protocol")
            opfile.write("User passes Fiat Shamir Protocol\n")

        else:
            print("User does not pass Fiat-Shamir Protocol")
            opfile.write("User does not pass Fiat-Shamir Protocol\n")

            final = "NOT VERIFIED"

        conn.send(final.encode())

        case += 1
        print("***********************************************")
        opfile.write("***********************************************\n")
    # close the connection
    conn.close()
    print("The final result of Fiat-Shamir Authentication: ", final)
    opfile.write(
        "The final result of Fiat-Shamir Authentication: %s\n" % final)
    opfile.write("\n\n")


if __name__ == '__main__':
    server_program()
