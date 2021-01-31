FROM amazonlinux:2
RUN yum install -y unzip less && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

RUN yum install -y python37

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py --user

RUN mkdir -p /root/.local/bin
ENV PATH $PATH:/root/.local/bin

RUN pip install awsebcli --upgrade --user

COPY .aws/ /root/.aws/

RUN chmod 700 /root/.aws
RUN chmod 600 /root/.aws/*

WORKDIR /root
