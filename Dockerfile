FROM  opentaproject/ww-renderer-openta:base
WORKDIR /usr/app
COPY . /usr/app

RUN cd lib/WeBWorK/htdocs && npm install && cd ../../..

EXPOSE 3000

#HEALTHCHECK CMD curl -I localhost:3000/health
#CMD hypnotoad -f ./script/render_app
#CMD morbo -l http://localhost:3000 ./script/render_app
