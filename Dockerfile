FROM python:3
COPY . .
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
RUN python -c "from fake_useragent import FakeUserAgent; FakeUserAgent();"
EXPOSE 5000
CMD gunicorn -b 0.0.0.0:5000 app:app
