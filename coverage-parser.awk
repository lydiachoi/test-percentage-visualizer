BEGIN{
  ORS=",";
  print ",Commit,Statements,Branches,Functions,Lines";
  print "\n";
}

/Commit: / {print $2};
/Statements   :/ {print $3};
/Branches     :/ {print $3};
/Functions    :/ {print $3};
/Lines        :/ {print $3};
/Ran all test suites.|This commit has no tests/ {print "\n"};
