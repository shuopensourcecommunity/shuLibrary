FROM python:3.7.2
COPY . .
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
EXPOSE 5000
RUN python -c "from fake_useragent import FakeUserAgent; FakeUserAgent();"
CMD gunicorn -b 0.0.0.0:5000 app:app
