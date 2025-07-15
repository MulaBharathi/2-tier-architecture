#!/bin/bash

# Update system
sudo apt update

# Install Python and Flask
sudo apt install -y python3-pip amazon-cloudwatch-agent
pip3 install flask

# Create app folder
mkdir -p /home/ubuntu/app
cd /home/ubuntu/app

# (Optional) Create a sample Flask app
cat <<EOF > app.py
from flask import Flask
app = Flask(__name__)
@app.route("/")
def home():
    return "Flask app is running!"
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
EOF

# Start Flask app and log output
nohup python3 app.py > flask.log 2>&1 &

# Create CloudWatch config file
sudo tee /opt/aws/amazon-cloudwatch-agent/bin/config.json > /dev/null <<EOF
{
  "logs": {
    "logs_collected": {
      "files": {
        "collect_list": [
          {
            "file_path": "/home/ubuntu/app/flask.log",
            "log_group_name": "/ec2/flask/app",
            "log_stream_name": "{instance_id}"
          }
        ]
      }
    }
  }
}
EOF

# Start CloudWatch agent
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
  -a fetch-config \
  -m ec2 \
  -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json \
  -s

