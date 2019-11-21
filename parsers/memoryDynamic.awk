BEGIN{
  ORS=",";
  print ",Commit,Pass/fail,Test Class,Heap Usage in MB";
}
/Commit: / {print $2};
/PASS/ {print "PASS"};
/PASS/ {print $2}; 
/PASS/ {print (NF==6 ? substr($(NF-3),2): $(NF-3))}
/FAIL/ {print "FAIL"};
/FAIL/ {print $2};
/Ran all test suites.|This commit has no tests/ {print "\n"};
