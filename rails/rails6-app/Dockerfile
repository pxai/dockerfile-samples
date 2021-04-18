FROM ruby:latest

RUN apt-get update

RUN apt-get install -y vim git openssl yarn sudo \
    tzdata sqlite3

ENV NODE_VERSION 12.18.3

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash \
    && . ~/.nvm/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NVM_DIR ~/.nvm
ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version

RUN npm install -g yarn
RUN yarn --version
#RUN bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java

COPY ./src/ /var/
WORKDIR /var/app

RUN gem install rails
RUN bundle install

EXPOSE 3000:3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
