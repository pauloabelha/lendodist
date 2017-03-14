
function p = perc_error_stirling_approx(m)
  var_1tom = 1:m;
  var_factorial = factorial(var_1tom);
  p = (var_factorial-stirling_approx(var_1tom))./var_factorial;
endfunction