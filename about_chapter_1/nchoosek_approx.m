
function v = nchoosek_approx(N, k)
  if k < 2 || N < 2
    error('N and k should be greater than than 1');
  end
  if k > N
    error('k should be smaller than N');
  end
  v = 2.^(N.*bin_entropy(k./N));
  v = v .- 2.^(0.5.*log2(2.*pi.*N.*((N.-k)./N).*(k./N)));
endfunction