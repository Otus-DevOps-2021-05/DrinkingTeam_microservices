FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y wget ruby-full ruby-dev build-essential git gnupg ruby-bundler

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

#RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
#RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
RUN wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list

RUN apt-get update
RUN apt-get install -y mongodb-org

#RUN gem install bundler
RUN git clone -b monolith https://github.com/express42/reddit.git

COPY mongod.conf /etc/mongodb.conf
COPY db_config /reddit/db_config
COPY start.sh /start.sh

RUN cd /reddit && rm Gemfile.lock && bundle install
RUN chmod 0777 /start.sh

CMD ["/start.sh"]
#CMD ["/bin/bash"]
