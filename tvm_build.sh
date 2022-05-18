tag=r22.02

    # --backend=onnxruntime:$tag \
    # --backend=pytorch:$tag \
    # --backend=tensorflow1:$tag \
    # --backend=tensorflow2:$tag \
    # --backend=openvino:$tag \
    # --backend=tensorrt:$tag \
    # --backend=python:$tag \
    # --backend=dali:$tag \
    # --backend=fil:$tag \

    # --backend=identity:$tag \
    # --backend=repeat:$tag \
    # --backend=square:$tag \


./build.py \
    --cmake-dir=/home/rkimball/dev/triton-inference-server/build \
    --build-dir=/tmp/test_tritonbuild \
    --enable-logging \
    --enable-stats \
    --enable-tracing \
    --enable-metrics \
    --enable-gpu-metrics \
    --enable-gpu \
    --filesystem=gcs \
    --filesystem=azure_storage \
    --filesystem=s3 \
    --endpoint=http \
    --endpoint=grpc \
    --repo-tag=common:$tag \
    --repo-tag=core:$tag \
    --repo-tag=backend:$tag \
    --repo-tag=thirdparty:$tag \
    --backend=ensemble \
    --backend=tvm:bob/build \
    --repoagent=checksum:$tag
