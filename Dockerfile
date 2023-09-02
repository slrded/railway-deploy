FROM twentystar/bootiful-cat:latest

# Cloning-Repo
RUN git clone https://github.com/slrded/ub

# Copying requirements.txt from base repo..
COPY requirements.txt .

# ..And installing it.
RUN python3 -m pip install --upgrade pip wheel setuptools &&\
    python3 -m pip install -r requirements.txt

# Setting up Working Directory
WORKDIR tuturu-helper

# Start
CMD ["python3","-m","userbot"]
