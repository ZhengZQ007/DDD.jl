"""
```
JSON.lower(
    t::T,
) where {
    T <: Union{
        AbstractCrystalStruct,
        AbstractMobility,
        AbstractIntegrator,
        AbstractDlnSeg,
        AbstractDlnStr,
        AbstractDistribution,
    },
}

JSON.lower(t::nodeType)
```
Extensions to `JSON.lower` for custom types. Allows these variables to be serialised properly.
"""
function JSON.lower(
    t::T,
) where {
    T <: Union{
        AbstractCrystalStruct,
        AbstractMobility,
        AbstractIntegrator,
        AbstractDlnSeg,
        AbstractDlnStr,
        AbstractDistribution,
    },
}
    return string(t)
end
JSON.lower(t::nodeType) = Int(t)

"""
```
saveJSON(filename::AbstractString, args...; mode::AbstractString = "w")
```
Wrapper for `JSON.print` to a file, `args` are the variables or structures you want to save.
"""
function saveJSON(filename::AbstractString, args...; mode::AbstractString = "w")
    open(filename, mode) do io
        return length(args) == 1 ? JSON.print(io, args...) : JSON.print(io, args)
    end
    return nothing
end
