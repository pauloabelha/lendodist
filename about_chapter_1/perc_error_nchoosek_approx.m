
function p = perc_error_nchoosek_approx(m)
  var_1tom = 1:m;
  var_nchoosek = nchoosek(m,var_1tom);
  p = (var_nchoosek-nchoosek_approx(m,var_1tom))./var_nchoosek;
endfunction