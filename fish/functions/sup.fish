function sup
  if not test -e ~/Documents/standups/(date +%Y-%W-%w)
    cp ~/Documents/standups/(ls -Art  ~/Documents/standups/ | tail -n 1) ~/Documents/standups/(date +%Y-%W-%w)
  end 
  vi ~/Documents/standups/(date +%Y-%W-%w)
end
