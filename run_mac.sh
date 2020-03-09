#!/bin/bash

mkdir -p data
cd data
rm *.html resources/sheet.css
mv ~/Downloads/Reconnaissance.zip .
unzip Reconnaissance.zip
cd ..
python make_emails.py -n $1
open data/email.html data/public_content.html
