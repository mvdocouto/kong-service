FROM nginx:1.15.0-alpine
RUN apk update && apk add bash bind-tools vim curl
RUN wget https://releases.hashicorp.com/consul/1.5.3/consul_1.5.3_linux_amd64.zip
RUN unzip consul_1.5.3_linux_amd64.zip && mv consul /usr/bin && rm -f consul_1.5.3_linux_amd64.zip 
RUN mkdir /etc/consul.d && mkdir /var/consul.d
