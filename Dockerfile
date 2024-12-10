# Creating my custom Image based on httpd image
FROM httpd:latest

# My app image labels

LABEL app=webapp

# Including Enviromental variables

ENV VAR1=2025 VAR2=2024 VAR3=2023 VAR4=ISLAM

# Intalling packages

RUN apt update  && apt install net-tools iputils-ping vim -y ;  \

		mkdir /home/German


#Printing a welcome message

RUN echo " Willkommen mein Freund"

#Copy index to doceumtn root *

COPY index.html /usr/local/apache2/htdocs

# Allow Port 80/tcp 22/tcp

EXPOSE 80

