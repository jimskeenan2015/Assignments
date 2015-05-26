testmatrix = function(mat){
        ##SquareMatrix is a invertible matrix of variable dimension
        
        temp = makeCacheMatrix(mat)
        
        start.time = Sys.time()
        cacheSolve(temp)
            
        
       start = Sys.time()
        cacheSolve(temp)
       elapsedtime = Sys.time() - start
        print("The Elapsed time was:")
        print(elapsedtime)
}