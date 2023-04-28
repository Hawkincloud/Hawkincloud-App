FROM python:3.10.0-alpine3.15
WORKDIR /src
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY src src
COPY src database.db
COPY src/app.py /src/
RUN mkdir -p /src/templates
RUN mkdir -p /src/static
RUN mkdir -p /src/static/pics 
RUN mkdir -p /src/static/fonts 

COPY src/static/fonts/Ambattur-Sign.otf /src/static/fonts
COPY src/static/fonts/Leyton-Bold.otf /src/static/fonts
COPY src/static/fonts/Monday.otf /src/static/fonts
COPY src/static/fonts/TechnoChainExtrude.otf /src/static/fonts
COPY src/static/fonts/TechnoChainOutline.otf /src/static/fonts
COPY src/static/fonts/TechnoChainRounded.otf /src/static/fonts
COPY src/static/fonts/TechnoChain.otf /src/static/fonts


COPY src/static/pics/kms.png /src/static/pics
COPY src/static/pics/logo__5-removebg.png /src/static/pics
COPY src/static/pics/logo__5-removebg.png /src/static/pics
COPY src/static/pics/pattern.png /src/static/pics

COPY src/static/dashboard.css /src/static/
COPY src/static/signin.css /src/static/
COPY src/static/starter-template.css /src/static/

COPY src/templates/buckets.html /src/templates/
COPY src/templates/charts.html /src/templates/
COPY src/templates/cost_dashboard.html /src/templates/
COPY src/templates/dashboard.html /src/templates/
COPY src/templates/ec2.html /src/templates/
COPY src/templates/events_chart.html /src/templates/
COPY src/templates/index.html /src/templates/
COPY src/templates/kms_graph.html /src/templates/
COPY src/templates/login.html /src/templates/
COPY src/templates/signup.html /src/templates/

EXPOSE 4000
ENTRYPOINT ["python", "app.py"]

RUN echo "from app import db; db.create_all(); exit()" | flask shell
CMD ["sqlite3", "database.db", "select * from user;, .exit"]

RUN apk add --no-cache curl \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm awscliv2.zip \
    && apk del curl

ENV AWS_ACCESS_KEY_ID=<your-access-key-id>
ENV AWS_SECRET_ACCESS_KEY=<your-secret-access-key>
ENV AWS_DEFAULT_REGION=<your-aws-region>
