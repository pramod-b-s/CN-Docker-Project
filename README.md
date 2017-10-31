# Course Project for Creating a Docker-Image for easy setup of TEACUP 
## Course Code : CO300

### Overview
TEACUP (TCP Experimentation Automation Controlled Using Python) is an automated framework to setup a testbed for 
real time experimentation of TCP. This framework has been proposed by Swinburne University, Australia and has 
been in use since past few years. 
However, setting up this framework is a tedious job and takes away several months. 
At NITK, this framework has been set up successfully. This project aims to use the docker technology to simplify the 
setting of TEACUP in future.

TEACUP is used to automate many aspects of running TCP performance experiments in our specially-constructed physical testbed. TEACUP enables repeatable testing of different TCP algorithms over a range of emulated network path conditions, bottleneck rate limits and bottleneck queuing disciplines.We hope TEACUP proves useful to other researchers who already have (or are interested in setting up) similar network testbeds.

### Instructions for TEACUP setup using Docker container
1. Make sure you are running Ubuntu 14.04.
2. Before running any of the scripts mentioned henceforth;
  - Make the appropriate script executable by using the command 
    <code>chmod +x scriptName.sh</code>
  - Run the script using the command 
    <code>./scriptName.sh</code>
3. Depending on whether your OS type is 32-bit or 64-bit, run install32.sh or install64.sh scripts respectively.
4. Boot with Linux 3.17 kernel by going to "Advanced options for Ubuntu" before system startup after restart. 
5. Make other changes to your kernel by running the installteacup.sh script. 
6. Install Docker by running the installdocker.sh script.
7. Load the Docker image using the command <code>sudo docker load -i teacup.tar</code>
8. Run the container using the command <code>sudo docker run -it teacup</code>
9. Run teacupstart.sh to open the teacup files.

### References
+ http://caia.swin.edu.au/tools/teacup/
+ https://docs.docker.com/get-started/
