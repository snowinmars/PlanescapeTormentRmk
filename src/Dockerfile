FROM python:3.10-slim

ARG PROXY=
RUN pip install coverage --proxy $PROXY
# COPY requirements.txt .
# RUN pip install -r requirements.txt

WORKDIR /app

# CMD ["sh", "-c", "coverage run -m unittest discover -s . -p '*_tests.py' && coverage html"]
