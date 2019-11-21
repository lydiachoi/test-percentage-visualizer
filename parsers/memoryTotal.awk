BEGIN{
  ORS=",";
  SUM = 0;
  print ",Commit,Total Heap Usage for all tests";
}

/Commit: / { print $2 };
/Commit: / { SUM=0 }
/PASS/ { SUM+= (NF==6 ? substr($(NF-3),2): $(NF-3))}
/Ran all test suites.|This commit has no tests/ { print SUM,"\n" };
