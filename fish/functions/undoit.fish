function undoit
	git log -n1 --oneline | awk '{ print $1}' > .debug
git reset --hard (git log -n2 --oneline | tail -n1 | awk '{ print $1}')
end
