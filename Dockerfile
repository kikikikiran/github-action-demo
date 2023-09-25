FROM python:3
MAINTAINER Minhaj
RUN apt-get update
#RUN apt-get install -y python
RUN groupadd -r user && useradd -r -g user user
USER user
ADD hello.py /home/hello.py
CMD ["/home/hello.py"]
ENTRYPOINT ["python"]
