#!/bin/bash 
sudo pip3 install boto3
echo ''
echo Please enter a valid IP address:
read ip_address
echo IP address:$ip_address
bucket="jjp-2022-02-21-s3site"
echo export bucket="jjp-2022-02-21-s3site" >> ~/.bashrc
echo export bucket_url="https://${bucket}.s3-us-west-2.amazonaws.com/index.html" >> ~/.bashrc
FILE_PATH="/Users/juan.palacio/Documents/modern-python-apps-aws/website_security_policy.json"
FILE_PATH_2="/Users/juan.palacio/Documents/modern-python-apps-aws/python_3.6.8/permissions.py"
aws s3 cp --cache-control max-age=0 --content-type image/jpg /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/backdrop_camera.jpg s3://$bucket/backdrop_camera.jpg 
aws s3 cp --cache-control max-age=0 --content-type text/html /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/callback.html s3://$bucket/callback.html
aws s3 cp --cache-control max-age=0 --content-type application/javascript /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/config.js s3://$bucket/config.js
aws s3 cp --cache-control max-age=0 --content-type text/css /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/core.css s3://$bucket/core.css
aws s3 cp --cache-control max-age=0 --content-type application/javascript /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/flex_search.js s3://$bucket/flex_search.js
aws s3 cp --cache-control max-age=0 --content-type text/html /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/index.html s3://$bucket/index.html
aws s3 cp --cache-control max-age=0 --content-type application/javascript /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/jquery.js s3://$bucket/jquery.js
aws s3 cp --cache-control max-age=0 --content-type image/png /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/kiosk.png s3://$bucket/kiosk.png
aws s3 cp --cache-control max-age=0 --content-type image/png /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/kiosk_bottom.png s3://$bucket/kiosk_bottom.png
aws s3 cp --cache-control max-age=0 --content-type image/png /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/kiosk_left.png s3://$bucket/kiosk_left.png
aws s3 cp --cache-control max-age=0 --content-type image/png /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/kiosk_right.png s3://$bucket/kiosk_right.png
aws s3 cp --cache-control max-age=0 --content-type image/png /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/kiosk_top.png s3://$bucket/kiosk_top.png
aws s3 cp --cache-control max-age=0 --content-type text/css /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/main.css s3://$bucket/main.css
aws s3 cp --cache-control max-age=0 --content-type application/javascript /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/main.js s3://$bucket/main.js
aws s3 cp --cache-control max-age=0 --content-type application/javascript /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/products.js s3://$bucket/products.js
aws s3 cp --cache-control max-age=0 --content-type text/html /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/report.html s3://$bucket/report.html
aws s3 cp --cache-control max-age=0 --content-type text/css /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/reset.css s3://$bucket/reset.css
aws s3 cp --cache-control max-age=0 --content-type text/css /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/search.css s3://$bucket/search.css
aws s3 cp --cache-control max-age=0 --content-type application/javascript /Users/juan.palacio/Documents/modern-python-apps-aws/lab-2-api/resources/website/search.js s3://$bucket/search.js
sed -i "s/<FMI_1>/$bucket/g" $FILE_PATH
sed -i "s/<FMI_2>/$ip_address/g" $FILE_PATH
sed -i "s/<FMI_3>/$ip_address/g" $FILE_PATH
sed -i "s/<FMI>/$bucket/g" $FILE_PATH_2
python3 /Users/juan.palacio/Documents/modern-python-apps-aws/python_3.6.8/permissions.py