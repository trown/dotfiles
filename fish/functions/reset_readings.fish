function reset_readings
sudo chown trown:trown /dev/ttyACM0
echo "" > readings.txt
ufs put readings.txt
end
