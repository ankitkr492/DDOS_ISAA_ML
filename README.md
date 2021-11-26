# DDOS_ISAA_ML
DDOS Attack Detection and Prevention using Machine Learning (ISAA Project)

Steps to run the project

Run "sh dependencies.sh" to install all the dependencies required for the project.

Collecting data for normal traffic:
In controller.py set 
APP_TYPE = 0 #(0 -> data collection)
TEST_TYPE = 0 #(0 -> normal traffic) 

In topo.py set
TEST_TYPE = 'normal'

Open two terminal tabs:
In terminal Tab1 run
"ryu-manager controller.py"

In Terminal Tab2 run
"sudo python3 topo.py"
(You will see all topoligies will be set up and normal traffic will start generating)
(On the first tab you will see normal traffic will be getting captured)

After generation of Normal Traffic 
Clear the mininet logs by running this in Tab2 
"sudo mn -c"

Now simmilarly for generating Attack Traffic
In controller.py Set 
APP_TYPE = 0 #(0 -> data collection)
TEST_TYPE = 1 #(1 -> Attack traffic)

In topo.py set
TEST_TYPE = 'attack'

Now rerun topo.py and controller.py to start generating and collecting attack traffic

Now when all the traffic has been generated and stored in result.csv

Now Steps for detection of traffic using ML
In controller.py Set 
APP_TYPE = 1 #(1 -> detection)
TEST_TYPE = 0

First to show how it acts when normal traffic
In topo.py set
TEST_TYPE = 'normal'

Clear mininet logs using "sudo mc -c" and rerun topo.py and controller.py

You should see controller detecting Normal Traffic and allowing it

Now for testing against attack traffic
In topology set
TEST_TYPE = 'attack'

Clear mininet logs and rerun topo.py and controller.py

You should see controller detecting Attack Traffic and it will block the IP of attack source for 120 seconds.

