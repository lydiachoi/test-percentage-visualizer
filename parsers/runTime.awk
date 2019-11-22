BEGIN{
  ORS=",";
  print ",Commit,Number of Tests Run,Runtime (s)\n";
}
/Commit: / {print $2};
/Tests:/ {print $(NF-1)};
/Time: / {print $2};
/Ran all test suites.|This commit has no tests/ {print "\n"};
