FROM python3:5.0
LABEL owner="RAMESH"
LABEL Description="creating dockerfile" 
WORKDIR /webapp/config/
RUN yum --update && \
    yum install curl && \
    yum install git
RUN python -m pip install flask datetime pytz
COPY rest.py .
EXPOSE 8080
CMD [ "python3", "./rest.py" ]
