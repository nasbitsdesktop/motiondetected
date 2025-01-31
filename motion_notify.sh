#!/bin/bash

# URL for the ntfy.sh topic
TOPIC="ntfy.sh/nasbitsdesktop2motion"

# Path to the snapshot image (passed as an argument)
IMAGE_PATH="$1"  # This will be passed by the motion detection system

# Send a POST request with the message and the image attached
curl -X POST -d "Motion on the porch!" -F "attachment=@$IMAGE_PATH" $TOPIC
