function tbc
        set HOME /var/home/trown
	command /home/trown/.local/bin/coretoolbox create -I quay.io/alwaystherookie/toolbox-images:$argv -n $argv
        set HOME /home/trown
end
