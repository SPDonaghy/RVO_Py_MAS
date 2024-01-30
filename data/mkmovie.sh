#!/bin/bash

input_folder="C:\Users\17783\Desktop\VO_Practice\RVO_Py_MAS\data"
output_video="output_video.mp4"

# Change directory to the input folder
cd "$input_folder"

# Run ffmpeg command to create a video
ffmpeg -framerate 30 -pattern_type glob -i 'snap*.png' -c:v libx264 -pix_fmt yuv420p "$output_video"

echo "Video created: $output_video"
