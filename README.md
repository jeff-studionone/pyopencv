## Introduction
This is a repository that will containt the structure and requirements for pythong and OpenCV running in a docker conatainer.
Unfourtunately MAC does not have `/dev/video0` to read this device from the container.

- The recommendation is installing `ffmpeg` in MAC in order to get you webcam working and `mpeg -f avfoundation -framerate 30 -i "0" -target pal-vcd ./video/video0` to get you video in a file that you will mount in your container and reead with `OpenCV`. 
- The following command will inform if the video is working `python -c "import cv2;print(cv2.VideoCapture(0).isOpened())"`



