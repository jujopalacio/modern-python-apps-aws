'''
	You must replace <FMI> with your bucket name
'''
import boto3
S3API = boto3.client("s3", region_name="us-west-2") 
bucket_name = "jjp-2022-02-21-s3site"

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/backdrop_camera.jpg"
S3API.upload_file(filename, bucket_name, "backdrop_camera.jpg", ExtraArgs={'ContentType': "image/jpg", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/config.js"
S3API.upload_file(filename, bucket_name, "config.js", ExtraArgs={'ContentType': "application/js", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/core.css"
S3API.upload_file(filename, bucket_name, "core.css", ExtraArgs={'ContentType': "text/css", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/flex_search.js"
S3API.upload_file(filename, bucket_name, "flex_search.js", ExtraArgs={'ContentType': "application/js", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/index.html"
S3API.upload_file(filename, bucket_name, "index.html", ExtraArgs={'ContentType': "text/html", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/report.html"
S3API.upload_file(filename, bucket_name, "report.html", ExtraArgs={'ContentType': "text/html", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/jquery.js"
S3API.upload_file(filename, bucket_name, "jquery.js", ExtraArgs={'ContentType': "application/js", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/kiosk.png"
S3API.upload_file(filename, bucket_name, "kiosk.png", ExtraArgs={'ContentType': "image/png", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/main.css"
S3API.upload_file(filename, bucket_name, "main.css", ExtraArgs={'ContentType': "text/css", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/main.js"
S3API.upload_file(filename, bucket_name, "main.js", ExtraArgs={'ContentType': "application/js", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/products.js"
S3API.upload_file(filename, bucket_name, "products.js", ExtraArgs={'ContentType': "application/js", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/reset.css"
S3API.upload_file(filename, bucket_name, "reset.css", ExtraArgs={'ContentType': "text/css", "CacheControl": "max-age=0"})

filename = "/Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/search.css"
S3API.upload_file(filename, bucket_name, "search.css", ExtraArgs={'ContentType': "text/css", "CacheControl": "max-age=0"})


print ("DONE")