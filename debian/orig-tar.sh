#!/bin/bash

VERSION=0.9.0-incubating

URL=http://www.apache.org/dist/incubator/jena/jena-iri-${VERSION}/jena-iri-${VERSION}-source-release.zip

ZIP=../jena-iri_${VERSION}.orig.zip
TAR=../jena-iri_${VERSION}.orig.tar.gz

wget -O $ZIP $URL

mkdir -p tmp

unzip $ZIP -d tmp

echo "Rebuilding tar.gz"

(cd tmp ; tar -czf ../${TAR} * )

rm -rf tmp
