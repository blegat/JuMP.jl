using JuMP
m = Model()
@variable(m, X[1:3,1:3], SDP)
@show m.colCat
solve(m)
