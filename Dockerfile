FROM      centos:7
RUN       mkdir /data
WORKDIR   /data
COPY      *.sql /data/
RUN       yum install mysql -y
COPY      run.sh /
RUN       chmod +x /run.sh
CMD       /run.sh