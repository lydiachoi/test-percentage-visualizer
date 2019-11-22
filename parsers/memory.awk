BEGIN{
  ORS=",";
  SUM = 0;
  print ",Commit, Total Heap Usage for all tests\n";
}

/Commit: / {print $2, SUM=0};
/PASS/ { SUM+= (NF==6 ? substr($(NF-3),2): $(NF-3))}
/PASS/ { print SUM }
/Ran all test suites.|This commit has no tests/ {print SUM,"\n"};
