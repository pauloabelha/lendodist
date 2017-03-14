
function H = bin_entropy(x)
  if x < 0 || x > 1
    error('x should be in the inclusive interval [0, 1]');
  end
  H = (x.*log2(1./x)) .+ ((1.-x).*log2(1./(1-x)));
endfunction