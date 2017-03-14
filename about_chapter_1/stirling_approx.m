
function s = stirling_approx(x)
  s = (x.^x).*(e.^- x).*(sqrt(2*pi*x));
endfunction