module DDD

using LinearAlgebra, Plots, Statistics, InteractiveUtils, JSON, StaticArrays

# Miscelaneous.
include("./Misc/Misc.jl")
export makeTypeDict, compStruct, intAngle, externalAngle, rot3D, makeInstanceDict
export inclusiveComparison, ⊗

include("./Type/TypeBase.jl")
export BCC, FCC, HCP, loopDln, loopPrism, loopShear, AbstractShapeFunction, AbstractShapeFunction2D, AbstractShapeFunction3D, LinearQuadrangle2D, LinearQuadrangle3D
export MaterialParameters
export nodeType, SlipSystem, DislocationParameters, DislocationLoop, DislocationNetwork, DislocationNetwork!, checkNetwork, getSegmentIdx, getSegmentIdx!, makeConnect, makeConnect!
export IntegrationParameters, IntegrationTime
export Rand, Randn, Zeros, Regular, loopDistribution

include("./Processing/ProcessingBase.jl")
export calcSegForce, calcSegForce!, calcSelfForce, calcSelfForce!, calcSegSegForce, calcSegSegForce!
export dlnMobility, dlnMobility!
export mergeNode, splitNode, coarsenNetwork, refineNetwork
export shapeFunction, shapeFunctionDeriv

include("./PostProcessing/Plotting.jl")
export plotNodes, plotNodes!

include("./IO/IOBase.jl")
export load, loadDislocationParameters, loadMaterialParameters, loadIntegrationParameters
export loadSlipSystem, loadDislocationLoop, loadParams
export loadDislocationLoop, loadNetwork, loadIntegrationTime
export save
end # module
