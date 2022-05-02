#!/usr/bin/env python3
import networkx as nx
import csv
import sys
import matplotlib.pyplot as plt
import random

_DEBUG_ = False


def buildG(G, file_, delimiter_):
    reader = csv.reader(open(file_), delimiter=delimiter_)
    for line in reader:
        if len(line) > 2:
            if float(line[2]) != 0.0:
                G.add_edge(int(line[0]), int(line[1]))
        else:
            G.add_edge(int(line[0]), int(line[1]))


# This method compute the modularity of current split
def _GirvanNewmanGetModularity(G, deg_, m_):
    New_A = nx.adj_matrix(G)
    New_deg = {}
    New_deg = UpdateDeg(New_A, G.nodes())
    # Let's compute the Q
    comps = nx.connected_components(G)
    print('No of communities in decomposed G: {}'.format(
        nx.number_connected_components(G)))
    Mod = 0
    for c in comps:
        EWC = 0
        RE = 0
        for u in c:
            EWC += New_deg[u]
            RE += deg_[u]
        Mod += (float(EWC) - float(RE*RE)/float(2*m_))
    Mod = Mod/float(2*m_)
    if _DEBUG_:
        print("Modularity: {}".format(Mod))
    return Mod


def UpdateDeg(A, nodes):
    deg_dict = {}
    B = A.sum(axis=1)
    i = 0
    for node_id in list(nodes):
        deg_dict[node_id] = B[i, 0]
        i += 1
    return deg_dict


def edge_to_remove(graph):
    G_dict = nx.edge_betweenness_centrality(graph)
    edge = ()

    # extract the edge with highest edge betweenness centrality score
    for key, value in sorted(G_dict.items(),
                             key=lambda item: item[1], reverse=True):
        edge = key
        break

    return edge

# This method runs GirvanNewman algorithm and find the best community
# split by maximizing modularity measure


def runGirvanNewman(G, Orig_deg, m_):
    sg = nx.connected_components(G)
    sg_count = nx.number_connected_components(G)
    BestQ = 0.0
    Q = 0.0
    while(sg_count == 1):

        G.remove_edge(edge_to_remove(G)[0], edge_to_remove(G)[1])
        sg = nx.connected_components(G)
        sg_count = nx.number_connected_components(G)
        Q = _GirvanNewmanGetModularity(G, Orig_deg, m_)
        print("Modularity of decomposed G: {}".format(Q))
        if Q > BestQ:
            BestQ = Q
            Bestcomps = list(nx.connected_components(G))
            print("Identified components: {}".format(Bestcomps))
        if G.number_of_edges() == 0:
            break
        if BestQ > 0.0:
            print("Max modularity found (Q): {} and number of communities: {}".
                  format(
                      BestQ, len(Bestcomps)))
            print("Graph communities: {}".format(Bestcomps))
        else:
            print("Max modularity (Q):", BestQ)

    return sg


def makeGraph(G, sg):
    # find the nodes forming the communities
    node_groups = []

    for i in sg:
        node_groups.append(list(i))
    # plot the communities
    pos = nx.spring_layout(G)
    color_map = []
    colors = []
    for i in range(len(node_groups)):
        r = random.random()
        b = random.random()
        g = random.random()
        color = (r, g, b)
        colors.append(color)
    for node in G:
        for i in range(len(node_groups)):
            if node in node_groups[i]:
                color_map.append(colors[i])
    nx.draw(G, pos, node_color=color_map, with_labels=True)
    plt.show()


def main(argv):
    if len(argv) < 2:
        G = nx.karate_club_graph()
        if _DEBUG_:
            print('G nodes: {} & G no of nodes: {}'.format(
                G.nodes(), G.number_of_nodes()))

        n = G.number_of_nodes()
        A = nx.adj_matrix(G)

        m_ = 0.0
        for i in range(0, n):
            for j in range(0, n):
                m_ += A[i, j]
        m_ = m_/2.0
        if _DEBUG_:
            print("m: {}".format(m_))

        # calculate the weighted degree for each node
        Orig_deg = {}
        Orig_deg = UpdateDeg(A, G.nodes())

        # run Newman alg
        sg = runGirvanNewman(G, Orig_deg, m_)
        makeGraph(G, sg)
        return 1

    graph_fn = argv[1]
    G = nx.Graph()
    buildG(G, graph_fn, ',')

    if _DEBUG_:
        print('G nodes: {} & G no of nodes: {}'.format(
            G.nodes(), G.number_of_nodes()))

    n = G.number_of_nodes()
    A = nx.adj_matrix(G)

    m_ = 0.0
    for i in range(0, n):
        for j in range(0, n):
            m_ += A[i, j]
    m_ = m_/2.0
    if _DEBUG_:
        print("m: {}".format(m_))

    # calculate the weighted degree for each node
    Orig_deg = {}
    Orig_deg = UpdateDeg(A, G.nodes())

    # run Newman alg
    sg = runGirvanNewman(G, Orig_deg, m_)
    makeGraph(G, sg)


if __name__ == "__main__":
    sys.exit(main(sys.argv))
