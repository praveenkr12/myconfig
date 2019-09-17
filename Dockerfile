FROM python
LABEL maintainer="praveen kumar"
RUN pip install beautifulsoup4
RUN pip install requests
COPY linkextractor.py /app/
WORKDIR /app
RUN chmod a+x linkextractor.py
ENTRYPOINT ["./linkextractor.py"]
