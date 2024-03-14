start:
	docker run -it --name windows \
	-p 8006:8006 --device=/dev/kvm \
	--cap-add NET_ADMIN \
	--stop-timeout 120 \
	dockurr/windows

core11:
	docker run -it --name core11 \
	-p 8006:8006 --device=/dev/kvm \
	--cap-add NET_ADMIN \
	--stop-timeout 120 \
	-e VERSION=core11 \
	dockurr/windows
