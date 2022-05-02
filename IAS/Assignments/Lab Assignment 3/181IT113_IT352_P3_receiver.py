from scapy.layers.inet import *
from scapy.all import *
f = open("hex-dump.txt", "r")
opfile = open("181IT113_IT352_P3_Output_TC4.txt", "w")


def sniffingPacket():
    # TC1
    # packet=sniff(filter="dst host 100.100.100.100",count=1)
    # TC2
    # packet=sniff(filter="dst host 100.100.110.100",count=1)
    # TC3
    # packet=sniff(filter="dst host 200.200.200.200",count=1)
    # TC4
    packet = sniff(filter="dst host 100.102.100.102", count=1)
    return packet[0]


def packetPrint(packet):
    print("Packet in the raw form:")
    print("\n")
    print(str(packet))
    print("\n")
    print("Details of packet (Human Understandable form):")
    print("\n")
    print(packet.display())
    print("\n")


def condition(d):
    sip = ""
    dip = ""
    sp = ""
    dp = ""
    if d[12] == "08" and d[13] == "00":
        # IP version
        if d[14][0] == "4":
            print("IPv4 Packet")
            opfile.write("IP Version: IPv4\n")
        else:
            print("IPv6 Packet")
            opfile.write("IP Version: IPv6\n")

        # destination mac address
        dest_mac = d[0:6]
        dm = ""
        for i in range(len(dest_mac)-1):
            dm += str(dest_mac[i])
            dm += ":"
        dm += str(dest_mac[len(dest_mac)-1])
        print("Destination MAC:", dm)
        opfile.write("Destination MAC: %s\n" % dm)

        # source mac address
        src_mac = d[6:12]
        sm = ""
        for i in range(len(src_mac)-1):
            sm += str(src_mac[i])
            sm += ":"
        sm += str(src_mac[len(src_mac)-1])
        print("Source MAC:", sm)
        opfile.write("Source MAC: %s\n" % sm)

        # source ip address
        src_ip = [int(i, 16) for i in d[26:30]]
        for i in range(len(src_ip)-1):
            sip += str(src_ip[i])
            sip += "."
        sip += str(src_ip[len(src_ip)-1])
        print("Source IP:", sip)
        opfile.write("Source IP: %s\n" % sip)

        # destination ip address
        dest_ip = [int(i, 16) for i in d[30:34]]
        for i in range(len(dest_ip)-1):
            dip += str(dest_ip[i])
            dip += "."
        dip += str(dest_ip[len(dest_ip)-1])
        print("Destination IP:", dip)
        opfile.write("Destination IP: %s\n" % dip)

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
        if sip == "10.10.1.1" and dp == 80:
            print("Deny Packet")
            opfile.write("Deny Packet\n")
        else:
            print("Allow Packet")
            opfile.write("Allow Packet\n")
            '''
        elif dip == "100.100.100.100" and dp == 80:
            print("Deny Packet")
            opfile.write("Deny Packet\n")
        elif dip == "100.100.110.100" and dp == 400:
            print("Deny Packet")
            opfile.write("Deny Packet\n")
        elif dip == "200.200.200.200":
            print("Deny Packet")
            opfile.write("Deny Packet\n")
        else:
            print("Deny Packet")
            opfile.write("Deny Packet\n")
        '''
    else:
        print("Invalid Packet")
        opfile.write("Invalid Packet\n")


def main():
    packet = sniffingPacket()
    packetPrint(packet)
    opfile.write("Packet in raw form: \n%s\n" % str(packet))
    opfile.write("\n")
    opfile.write("Packet in Human Understandable form: \n%s\n" %
                 str(packet.show()))
    opfile.write("\n")

    sys.stdout = open("hex-dump.txt", "w")
    hexdump(packet)
    sys.stdout = sys.__stdout__

    dumpdata = f.read()
    d = dumpdata.split(' ')
    dumps = []
    for i in d:
        if(i != ''):
            dumps.append(i)

    rel_dump = []
    for i in dumps:
        if len(i) == 2:
            rel_dump.append(i)

    condition(rel_dump)


if __name__ == "__main__":
    main()

f.close()
opfile.close()
