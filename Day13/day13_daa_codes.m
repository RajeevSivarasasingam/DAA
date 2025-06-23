% Define the weighted adjacency matrix
adjMatrix =[
    0 2 0 1 0;
    2 0 4 3 0;
    0 4 0 0 6;
    1 3 0 0 5;
    0 0 6 5 0;
    ];
% create and plot the graph

G=graph(adjMatrix);
plot(G);

%=================================================================================%

% i~=j  // i not equal j

% Define the weighted adjacency matrix
adjMatrix =[
    0 2 0 1 0;
    2 0 4 3 0;
    0 4 0 0 6;
    1 3 0 0 5;
    0 0 6 5 0;
    ];
% create and plot the graph

G=graph(adjMatrix);
plot(G,'EdgeLabel',G.Edges.Weight);
title("Weighted graph for adj");

% Replace 0s with Inf (except diagonal)
n = size(adjMatrix,1);
for i = 1:n
    for j= 1:n
        if i~= j && adjMatrix(i,j) ==0
            adjMatrix(i,j) =Inf;
        end
    end
end

% Dijkstra's Algorithm
starNode=1;
visited = false(1,n);
distance = Inf(1,n);
distance(starNode) = 0;

for i=1:n
    minDist = Inf;
    u = -1;
    for j=1:n
        if ~visited(j) && distance(j) < minDist
            minDist = distance(j);
            u=j;
        end
    end

    if u == -1
        break;
    end
    visited(u) = true;

    for v=1:n
        if ~visited(v) && adjMatrix(u,v) ~= Inf
            if distance(u) + adjMatrix(u,v) < distance(v)
                distance(v) = distance(u) + adjMatrix(u,v)
            end
        end
    end

    % Display Results
    fprintf('Shortest distances from the source: \n');
    for i = 1:n
        fprintf('Vertex %d:  %d\n',i,distance(i));
    end

end


%OUTput :::
>> Dijkstra_adjmatrix

distance =

     0     2   Inf   Inf   Inf


distance =

     0     2   Inf     1   Inf

Shortest distances from the source: 
Vertex 1:  0
Vertex 2:  2
Vertex 3:  Inf
Vertex 4:  1
Vertex 5:  Inf

distance =

     0     2   Inf     1     6

Shortest distances from the source: 
Vertex 1:  0
Vertex 2:  2
Vertex 3:  Inf
Vertex 4:  1
Vertex 5:  6

distance =

     0     2     6     1     6

Shortest distances from the source: 
Vertex 1:  0
Vertex 2:  2
Vertex 3:  6
Vertex 4:  1
Vertex 5:  6
Shortest distances from the source: 
Vertex 1:  0
Vertex 2:  2
Vertex 3:  6
Vertex 4:  1
Vertex 5:  6
Shortest distances from the source: 
Vertex 1:  0
Vertex 2:  2
Vertex 3:  6
Vertex 4:  1
Vertex 5:  6
>> 

%===================================================================================%

