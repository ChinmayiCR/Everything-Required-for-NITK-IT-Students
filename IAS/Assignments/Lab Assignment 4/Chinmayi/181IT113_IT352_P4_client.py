import socket
opfile = open("181IT113_IT352_P4_Output_client.txt", "a+")


def client_program():
    # get the hostname
    host = socket.gethostname()
    port = 5000

    client_socket = socket.socket()
    # new connection
    client_socket.connect((host, port))

    p = 89
    print("p value chosen by third party: ", p)
    opfile.write("p value chosen by third party: %d \n" % p)

    q = 97
    print("q value chosen by third party: ", q)
    opfile.write("q value chosen by third party: %d\n" % q)

    n = p*q
    print("Calculated n value: ", n)
    opfile.write("Calculated n value: %d\n" % n)
    # set private key, s
    s = 8635
    print("Private key of claimant: ", s)
    opfile.write("Private key of claimant: %d\n " % s)

    check = 0

    v = s*s % n
    print("Public key of claimant: ", v)
    opfile.write("Public key of claimant: %d\n" % v)

    if s > n-1:
        print("Value of public key MUST be less than n-1")
        opfile.write("Value of public key MUST be less than n-1\n")
        check = 1

    r = 53

    case = 0

    final = "VERIFIED"
    print("***********************************************")
    opfile.write("***********************************************\n")
    while case < 2:
        print("\nRound ", case+1, ":")
        opfile.write("\nRound %d: \n" % (case+1))

        x = (r*r) % n
        print("Witness, x: ", x)
        opfile.write("Witness, x: %d\n" % x)

        print("Random value selected: ", r)
        opfile.write("Random value selected: %d\n" % r)

        if r > (n-1):
            print("Random value MUST be less than n-1")
            opfile.write("Random value MUST be less than n-1\n")

            check = 1
        # send public key to verifier
        client_socket.send(str(v).encode())

        ack = client_socket.recv(1024).decode()
        print("Acknowledgment to sent public key: ", ack)
        opfile.write("Acknowledgment to sent public key: %s\n" % ack)
        # send witness to verifier
        client_socket.send(str(x).encode())

        c = int(client_socket.recv(1024).decode())
        print("Challenge received by verifier: ", c)
        opfile.write("Challenge received by verifier: %d\n" % c)

        y = r * pow(s, c)
        print("Response, y: ", y)
        opfile.write("Response, y: %d\n" % y)
        # send response to verifier
        client_socket.send(str(y).encode())
        # receive response
        data = client_socket.recv(1024).decode()

        # show in terminal
        print('Received from verifier: ' + data)
        opfile.write('Received from verifier: %s\n' % data)
        # in case the claimant isn't verified
        if data != "VERIFIED":
            final = "NOT VERIFIED"

        case += 1

        print("***********************************************")
        opfile.write("***********************************************\n")
    # close the connection
    client_socket.close()

    print("Result of Fiat-Shamir Authentication: ", final)
    opfile.write("Result of Fiat-Shamir Authentication: %s\n" % final)
    # test case fail condition
    if check == 1:
        print("\n\nTest fails: ")
        opfile.write("\nTest fails:\n ")
        print("value of r and s must be less than n-1 at all rounds")
        opfile.write("value of r and s must be less than n-1 at all rounds\n")
    opfile.write("\n\n")


if __name__ == '__main__':
    client_program()
