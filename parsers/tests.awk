BEGIN{
  ORS=",";
  {print ""} 
}

/Commit: / {print $2};
/Tests:/ {print $(NF-3)};
/Tests:/ {print $(NF-1)};
/Ran all test suites.|This commit has no tests/ {print "\n"};
