BEGIN{
  ORS=",";
  {print ""} 
}

/Commit: / {print $2};
/All files/ {print $4};
/All files/ {print $6};
/All files/ {print $8};
/All files/ {print $10};
/Ran all test suites.|This commit has no tests/ {print "\n"};
