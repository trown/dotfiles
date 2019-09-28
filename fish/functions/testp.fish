function testp
        make clean > /dev/null
	if not make plan > /dev/null
           echo (pwd)
        end
        make clean > /dev/null
end
