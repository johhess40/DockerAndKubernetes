FROM tiangolo/uwsgi-nginx-flask:python3.6
WORKDIR /project
COPY . /project
COPY init.sh /usr/local/bin
EXPOSE 8000
ENV FLASK_APP=main.py
RUN pip install -r requirements.txt
RUN chmod u+x /usr/local/bin/init.sh   
ENTRYPOINT [ "init.sh" ]