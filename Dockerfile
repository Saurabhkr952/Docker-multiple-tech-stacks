FROM ubuntu

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG AWS_SESSION_TOKEN

# Set environment variables based on build arguments
ENV AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
ENV AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN

# Update package lists and install necessary packages
RUN apt-get update && apt-get install -y \
    git pip
    
RUN pip install git-remote-codecommit

WORKDIR /migrate

COPY . .
RUN chmod +x pipe.sh
RUN ./pipe.sh
