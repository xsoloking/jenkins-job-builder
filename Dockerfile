FROM --platform=${TARGETPLATFORM} python:3.8

COPY . /workspace

RUN cd /workspace; pip install -r requirements.txt; python setup.py build;  python setup.py install; rm -rf /workspace
