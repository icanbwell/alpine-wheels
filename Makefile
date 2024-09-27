.PHONY: numpy
numpy:
	cd packages/numpy && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_VERSION=1.26.4 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_VERSION=1.26.4 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_VERSION=1.26.4 --build-arg PYTHON_VERSION=3.10 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: scipy
scipy:
	cd packages/scipy && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_VERSION=1.13.1 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_VERSION=1.13.1 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: shapely
shapely:
	cd packages/shapely && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_VERSION=2.0.6 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_VERSION=2.0.6 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: google-crc32c
google-crc32c:
	cd packages/google-crc32c && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_VERSION=1.5.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_VERSION=1.5.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: grpcio
grpcio:
	cd packages/grpcio && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_VERSION=1.66.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_VERSION=1.66.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: fastapi
fastapi:
	cd packages/default && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_NAME=fastapi --build-arg PACKAGE_VERSION=0.112.2 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_NAME=fastapi --build-arg PACKAGE_VERSION=0.112.2 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: pymongo
pymongo:
	cd packages/default && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_NAME=pymongo --build-arg PACKAGE_VERSION=4.8.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_NAME=pymongo --build-arg PACKAGE_VERSION=4.8.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: sentence-transformers
sentence-transformers:
	cd packages/default && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_NAME=sentence-transformers --build-arg PACKAGE_VERSION=2.7.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_NAME=sentence-transformers --build-arg PACKAGE_VERSION=2.7.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: nltk
nltk:
	cd packages/default && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_NAME=nltk --build-arg PACKAGE_VERSION=3.9.1 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_NAME=nltk --build-arg PACKAGE_VERSION=3.9.1 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: python-crfsuite
python-crfsuite:
	cd packages/default && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_NAME=python-crfsuite --build-arg PACKAGE_VERSION=0.9.10 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_NAME=python-crfsuite --build-arg PACKAGE_VERSION=0.9.10 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: gensim
gensim:
	cd packages/gensim && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_VERSION=4.3.3 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_VERSION=4.3.3 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .

.PHONY: torch
torch:
	cd packages/torch && \
	docker buildx build --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_VERSION=2.4.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels,src=/wheels . && \
	docker buildx build --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_VERSION=2.4.0 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels,src=/wheels .

.PHONY: transformers
transformers:
	cd packages/default && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f Dockerfile --build-arg PACKAGE_NAME=transformers --build-arg PACKAGE_VERSION=4.45.1 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels . && \
	docker buildx build --no-cache --progress=plain --platform linux/arm64 -f alpine.Dockerfile --build-arg PACKAGE_NAME=transformers --build-arg PACKAGE_VERSION=4.45.1 -t alpine-wheel-builder:latest --output type=local,dest=../../wheels .
