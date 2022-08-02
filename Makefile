.PHONY: all install_dependencies build_client start_server 

all: install_dependencies build_client start_server

start_server:
	cd src/backend/server && npx tsc && npm run start

build_client:
	cd src/frontend/client && npm run build && cd ../../../
	
install_dependencies:
	cd src/backend/server && npm install && cd ../../frontend/client && npm install && cd ../../../
