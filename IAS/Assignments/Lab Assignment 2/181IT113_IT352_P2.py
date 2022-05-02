file = open("hex-dump.txt", "r")
testdump = file.read().splitlines()
opfile = open("181IT102_IT352_P2_Output_hex-dump.txt", "w")

# removing irrelevant dumps
dumps = []
for i in testdump:
    if(i != ''):
        dumps.append(i)
# Test Condition 1: Allow packets with source IP 10.100.54.*
# Test Condition 2: Deny packets with destination port 80
# Test Condition 3: Deny packets with destination IP 10.100.53.1
# and destination port 443
# Test Condition 4: Deny packets with source IP 10.100.54.*
# Test Condition 5: Deny all packets

# working on different test cases
n = 1
for dump in dumps:
    d = dump.split(' ')
    print("Test Case #", n)
    opfile.write("\nTest Case # %d\n" % n)
    n += 1

    si = ""
    di = ""
    sp = ""
    dp = ""
    if d[12] == "08" and d[13] == "00":
        if d[14][0] == "4":
            print("IPv4 Packet")
            opfile.write("IP Version: IPv4\n")
        else:
            print("IPv6 Packet")
            opfile.write("IP Version: IPv6\n")

        # source mac address
        src_mac = d[6:12]
        sm = ""
        for i in range(len(src_mac)-1):
            sm += str(src_mac[i])
            sm += "."
        sm += str(src_mac[len(src_mac)-1])
        print("Source MAC:", sm)
        opfile.write("Source MAC: %s\n" % sm)

        # destination mac address
        dest_mac = d[0:6]
        dm = ""
        for i in range(len(dest_mac)-1):
            dm += str(dest_mac[i])
            dm += "."
        dm += str(dest_mac[len(dest_mac)-1])
        print("Destination MAC:", dm)
        opfile.write("Destination MAC: %s\n" % dm)

        # source ip address
        src_ip = [int(i, 16) for i in d[26:30]]
        for i in range(len(src_ip)-1):
            si += str(src_ip[i])
            si += "."
        si += str(src_ip[len(src_ip)-1])
        print("Source IP:", si)
        opfile.write("Source IP: %s\n" % si)

        # destination ip address
        dest_ip = [int(i, 16) for i in d[30:34]]
        for i in range(len(dest_ip)-1):
            di += str(dest_ip[i])
            di += "."
        di += str(dest_ip[len(dest_ip)-1])
        print("Destination IP:", di)
        opfile.write("Destination IP: %s\n" % di)

        # source port
        src_port = [int(i, 16) for i in d[34:36]]
        sp = (src_port[0] << 8)+src_port[1]
        print("Source Port:", sp)
        opfile.write("Source Port: %s\n" % sp)

        # destination port
        dest_port = [int(i, 16) for i in d[36:38]]
        dp = (dest_port[0] << 8)+dest_port[1]
        print("Destination Port:", dp)
        opfile.write("Destination Port: %s\n" % dp)

        # protocol
        protocol = d[23]
        if protocol == "11":
            print("Protocol: UDP\n")
            opfile.write("Protocol: UDP\n")
        elif protocol == "06":
            print("Protocol: TCP\n")
            opfile.write("Protocol: TCP\n")

        # Filter through ACL
        # Test Condition 1: Allow packets with source IP 10.100.54.*
        print("Test Condition 1: Allow packets with source IP 10.100.54.*")
        opfile.write(
            "\nTest Condition 1: Allow packets with source IP 10.100.54.*")
        if si.find("10.100.54.") != -1:
            print("Allow Packet")
            opfile.write("\nAllow Packet\n")
        else:
            print("Deny Packet")
            opfile.write("\nDeny Packet\n")
        # Test Condition 2: Deny packets with destination port 80
        print("Test Condition 2: Deny packets with destination port 80")
        opfile.write(
            "\nTest Condition 2: Deny packets with destination port 80")
        if dp == 80:
            print("Deny Packet")
            opfile.write("\nDeny Packet\n")
        else:
            print("Allow Packet")
            opfile.write("\nAllow Packet\n")
        # Test Condition 3: Deny packets with destination IP 10.100.53.1
        # and destination port 443
        print("Test Condition 3: Deny packets with destination IP 10.100.53.1 and destination port 443")
        opfile.write(
            "\nTest Condition 3: Deny packets with destination IP 10.100.53.1 and destination port 443")
        if di.find("10.100.53.1") != -1 and dp == 443:
            print("Deny Packet")
            opfile.write("\nDeny Packet\n")
        else:
            print("Allow Packet")
            opfile.write("\nAllow Packet\n")
        # Test Condition 4: Deny packets with source IP 10.100.54.*
        print("Test Condition 4: Deny packets with source IP 10.100.54.*")
        opfile.write(
            "\nTest Condition 4: Deny packets with source IP 10.100.54.*")
        if di.find("10.100.54.") != -1:
            print("Deny Packet")
            opfile.write("\nDeny Packet\n")
        else:
            print("Allow Packet")
            opfile.write("\nAllow Packet\n")
        # Test Condition 5: Deny all packets
        print("Test Condition 5: Deny all packets")
        opfile.write("\nTest Condition 5: Deny all packets")
        print("Deny Packet")
        opfile.write("\nDeny Packet\n")

    else:
        print("Invalid Packet")
        opfile.write("Invalid Packet\n")

    print()
    opfile.write("\n")

opfile.close()
