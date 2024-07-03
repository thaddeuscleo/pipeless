# /bin/bash

pipeless add stream \
    --input-uri "rtsp://192.168.0.10:8554/mystream" \
    --output-uri "rtmp://192.168.0.10:1937/res" \
    --frame-path "yolo"