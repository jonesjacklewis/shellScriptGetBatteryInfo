# Get Battery Info

This is a simple shell script used to get information about battery life. We are able to get battery life:
    - As a percentage
    - As a time in hours and minutes
    - Both


## Usage

### All Information

```sh
sh getBatteryInfo.sh 
# 68% - About 7 hours and 36 minutes remaining
sh getBatteryInfo.sh -pt
# 68% - About 7 hours and 36 minutes remaining
sh getBatteryInfo.sh -PT
# 68% - About 7 hours and 36 minutes remaining
sh getBatteryInfo.sh -Pt
# 68% - About 7 hours and 36 minutes remaining
sh getBatteryInfo.sh -pT
# 68% - About 7 hours and 36 minutes remaining
```

### Get Percentage

```sh
sh getBatteryInfo.sh -p
# 68%
sh getBatteryInfo.sh -P
# 68%
```

### Get Time

```sh
sh getBatteryInfo.sh -t
# About 7 hours and 36 minutes remaining
sh getBatteryInfo.sh -T
# About 7 hours and 36 minutes remaining
```