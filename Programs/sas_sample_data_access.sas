libname churn "/workspaces/myfolder/SAS-Viya-Workbench-and-VS-Code/Data" ;

libname churn_pq parquet "/workspaces/myfolder/SAS-Viya-Workbench-and-VS-Code/Data" ;

proc import file="/workspaces/myfolder/SAS-Viya-Workbench-and-VS-Code/Data/subscriptions.csv" out=subscriptions dbms=csv replace ;
run ;

libname rev json "/workspaces/myfolder/SAS-Viya-Workbench-and-VS-Code/Data/reviews.json" ;
proc datasets lib=rev ;
quit ;
