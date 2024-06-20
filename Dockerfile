FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y apache2 \
 zip \
 unzip \
 curl  \
 nodejs \
 git
COPY . /var/www/html/
WORKDIR /var/www/html
npm i
npm run build 
#RUN echo "parneet singh" >index.html
#RUN curl -o canvas.zip https://www.free-css.com/assets/files/free-css-templates/download/page273/canvas.zip
#RUN unzip canvas.zip
#RUN cp -rvf canvas/* .
#RUN rm -rf canvas.zip
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80
