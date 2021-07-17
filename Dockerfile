FROM lightdash/lightdash:latest

RUN apt-get update ; apt-get install -y --no-install-recommends libsasl2-dev
RUN pip install -U dbt==0.20.0
RUN pip install dbt-presto
RUN pip install 'dbt-spark[PyHive]'
