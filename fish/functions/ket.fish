function ket
	kubectl get $argv -o yaml | bat -l yaml --theme 1337
end
