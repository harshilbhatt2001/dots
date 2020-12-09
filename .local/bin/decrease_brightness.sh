#!/bin/bash

CurrentBrightness=$(cat "/sys/class/backlight/amdgpu_bl0/brightness")
Decrease=$1
NewBrightness=$((CurrentBrightness-Decrease))
echo $NewBrightness | sudo tee /sys/class/backlight/amdgpu_bl0/brightness
