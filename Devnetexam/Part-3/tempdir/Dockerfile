FROM python
RUN pip install flask
COPY ./static /home/devasc/labs/devnet-src/Devnetexam/Part-3/Static/
COPY ./templates /home/devasc/labs/devnet-src/Devnetexam/Part-3/templates/
COPY Dockerexam.py /home/devasc/labs/devnet-src/Devnetexam/Part-3
EXPOSE 8080
CMD python3 /home/devasc/labs/devnet-src/Devnetexam/Part-3/Dockerexam.py
