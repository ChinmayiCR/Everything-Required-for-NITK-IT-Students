from scapy.layers.inet import *
from scapy.all import *

# TC1
# source_ip='20.20.20.20'
# dest_ip='100.100.100.100'
# source_port=11
# dest_port=80

# packet=IP(src=src_ip,dst=dest_ip)/TCP(sport=src_port,dport=dest_port)
# sr1(packet)

# TC2
# source_ip='200.200.200.200'
# dest_ip='100.100.110.100'
# source_port=81
# dest_port=400

# packet=IP(src=src_ip,dst=dest_ip)/TCP(sport=src_port,dport=dest_port)
# srloop(packet)

# TC3
# source_ip='20.20.20.20'
# dest_ip='200.200.200.200'
# source_port=81
# dest_port=80

# packet=IP(src=src_ip,dst=dest_ip)/TCP(sport=src_port,dport=dest_port)
# sr(packet)

# TC4
source_ip = '200.20.202.20'
dest_ip = '100.102.100.102'
source_port = 81
dest_port = 80

packet = IP(src=source_ip, dst=dest_ip)/TCP(sport=source_port, dport=dest_port)
srloop(packet)
