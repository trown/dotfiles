function get_readings
sudo chown trown:trown /dev/ttyACM0
ufs get readings.txt
cat readings.txt
end
