
function v = nchoosek(N,k)
  if k < 0 || N < 0
    error('N and k should be greater than than 0');
  end
  if k > N
    error('k should be smaller than N');
  end
  v = factorial(N)./(factorial(N.-k).*factorial(k));
endfunction
