FROM python
WORKDIR /react-flask
COPY requirements.txt . 
RUN pip3 install -r requirements.txt
COPY api-rest api-rest 
COPY build build
ENV FLASK_APP="api-rest/api.py"
ENV FLASK_ENV="production"
 CMD ["flask", "run"]