FROM ubuntu

RUN apt-get update

RUN apt-get install -y git python3

RUN apt-get install -y python3-pip

ADD main.py /main.py

ADD README.md /README.md

ADD requirements.txt /requirements.txt

RUN pip install -r requirements.txt

ADD bin/print_hello bin/print_hello

USER deploy2022user

WORKDIR /home/deploy2022user

CMD ["uvicorn", "app.main:app", "--reload", "--port", "8898"]