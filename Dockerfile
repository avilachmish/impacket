FROM ubuntu
MAINTAINER Avi Lachmish <alachmish@trustwave.com>  
RUN apt-get update && apt-get install -y vim python2.7 python-dev libffi-dev libssl-dev git build-essential python-pil libjpeg8 libjpeg62-dev libfreetype6 libfreetype6-dev wget  

# Do following install tasks in /tmp 
WORKDIR /tmp  

# Install latest pip 
RUN wget https://bootstrap.pypa.io/get-pip.py 
RUN python2.7 get-pip.py  

# Do following install tasks in /opt 
WORKDIR /opt  
RUN git clone https://github.com/CoreSecurity/impacket.git  
WORKDIR /opt/impacket 
RUN python setup.py install

