#  Copyright 2016, Iain Dunning, Joey Huchette, Miles Lubin, and contributors
#  This Source Code Form is subject to the terms of the Mozilla Public
#  License, v. 2.0. If a copy of the MPL was not distributed with this
#  file, You can obtain one at http://mozilla.org/MPL/2.0/.
#############################################################################
# JuMP
# An algebraic modeling langauge for Julia
# See http://github.com/JuliaOpt/JuMP.jl
#############################################################################
# test/runtests.jl
#############################################################################

using JuMP
using Base.Test

# Load solvers
include("solvers.jl")

# Solver-dependent tests
include("model.jl");        length(   lp_solvers) == 0 && warn("Model tests not run!")
include("sdp.jl");          length(  sdp_solvers) == 0 && warn("Semidefinite tests not run!")
include("socduals.jl");     length(conic_solvers_with_duals) == 0 && warn("Conic solvers with duals tests not run!")
# Throw an error if anything failed
#FactCheck.exitstatus()

# hygiene.jl should be run separately
# hockschittkowski/runhs.jl has additional nonlinear tests
