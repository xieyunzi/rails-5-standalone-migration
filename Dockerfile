FROM ruby:2.4-alpine

# https://lug.ustc.edu.cn/wiki/mirrors/help/alpine
RUN echo 'http://mirrors.ustc.edu.cn/alpine/v3.4/main/' > /etc/apk/repositories
RUN apk --update add --upgrade --no-cache build-base bash mysql-dev mysql-client

RUN     mkdir       /app
WORKDIR /app
COPY    app/Gemfile /app/Gemfile
RUN bundle install

CMD ["/bin/bash"]
