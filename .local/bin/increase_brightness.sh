#!/bin/bash

CurrentBrightness=$(cat "/sys/class/backlight/amdgpu_bl0/brightness")
Increase=$1
NewBrightness=$((CurrentBrightness+Increase))
echo $NewBrightness | sudo tee /sys/class/backlight/amdgpu_bl0/brightness
