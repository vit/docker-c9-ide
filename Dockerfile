FROM node

WORKDIR /opt/app/c9
RUN git clone git://github.com/c9/core.git . && scripts/install-sdk.sh

ENTRYPOINT node /opt/app/c9/server.js -p 8080 -l 0.0.0.0 -w /opt/workspace -a $C9_USERNAME:$C9_PASSWORD
