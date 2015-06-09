DMCE <-
function(y, Y, n) {
        max(abs(MCE(y, Y, n) - MCe(cos(y - Y))))
    }
