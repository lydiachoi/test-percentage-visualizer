{
  gsub(/%/, "");
  print substr($0,2);
}