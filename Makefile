.PHONY: all build_client start_server

all: build_client start_server

start_server:
	cd src/backend/api && npx tsc && npm run start

build_client:
	cd src/frontend/client && npm run build && cd ../../../
	
	