#!/bin/bash

set -e

wheel_dir=$(cd wheels && pwd)

rm -f "$wheel_dir"/*.whl

for d in jepulis jepulis-ai lisaosa-jepulikseen; do
    pushd $d
    rm -fr dist build *.egg-info
    python setup.py sdist bdist_wheel >/dev/null
    mv -v dist/*.whl "$wheel_dir"
    popd
done
