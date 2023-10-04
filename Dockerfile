FROM python:3.7.3-stretch

## STEP 1: Establish a functional directory
WORKDIR /app


## STEP 2: source code into the working directory
COPY . app.py /app/


## STEP 3: Install the packages according to requirements.txt with hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

## STEP 4: Open on port 80
EXPOSE 80


## STEP 5: Make a run with "app.py" at container launch
CMD ["python", "app.py"]

