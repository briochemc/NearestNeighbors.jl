using FactCheck

#Pkg.checkout("Distances")

using NearestNeighbors

const metrics = [Euclidean(), Minkowski(3.5), Cityblock(), Chebyshev()]
const fullmetrics = [metrics; Hamming()]
const trees = [KDTree, BallTree]
const trees_with_brute = [BruteTree; trees]

include("test_knn.jl")
include("test_inrange.jl")
include("test_monkey.jl")
