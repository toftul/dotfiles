if gethostname() == "arch"
    push!(
          LOAD_PATH, 
          "/home/ivan/data/gdrive/science/research/projects/julia-modules/FiberEldyn/src"
         )
else
    push!(
          LOAD_PATH, 
          "/home/ivan/gdrive/science/research/projects/julia-modules/FiberEldyn/src"
         )
end

