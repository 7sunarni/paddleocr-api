FROM python:3.9-buster

RUN apt-get update &&  apt-get install libgl1 -y

RUN python -m pip install paddlepaddle -i https://mirror.baidu.com/pypi/simple

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

RUN pip install "paddleocr>=2.0.1" # Recommend to use version 2.0.1+

COPY . .

CMD python web.py
