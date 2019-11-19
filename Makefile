container-build:
	@docker run \
		-it \
		--volume ${PWD}:/workspace:z \
		--volume /tmp:/tmp:z \
		--volume /etc/orbis:/etc/orbis:z \
		--volume /var/run/docker.sock:/var/run/docker.sock:z \
		--workdir /workspace \
		--net=host \
		--rm \
		golang:1.13.4-alpine\
			go build -o strange-exit-code


test-correct-behaviour: container-build
	@./test-go.sh "fedora:30" "ubuntu:18.04" "centos:8"

test-incorrect-behaviour: container-build
	@./test-go.sh "centos:7.7.1908" "centos:7.6.1810"

test-verification:
	@./test-verification.sh
