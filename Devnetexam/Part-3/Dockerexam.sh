#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp Dockerexam.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" > tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile

echo "COPY ./static /home/devasc/labs/devnet-src/Devnetexam/Part-3/Static/" >> tempdir/Dockerfile
echo "COPY ./templates /home/devasc/labs/devnet-src/Devnetexam/Part-3/templates/" >> tempdir/Dockerfile
echo "COPY Dockerexam.py /home/devasc/labs/devnet-src/Devnetexam/Part-3" >> tempdir/Dockerfile

echo "EXPOSE 8080" >> tempdir/Dockerfile
echo "CMD python3 /home/devasc/labs/devnet-src/Devnetexam/Part-3/Dockerexam.py" >> tempdir/Dockerfile

cd tempdir
docker build -t dockerexam .

docker run -t -d -p 8080:8085 --name dockerexam dockerexam
docker ps -a
