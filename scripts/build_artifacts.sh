#/bin/bash
ARTIFACT_DIR="artifacts"
FILES=( ".dockerignore" "docker-compose.yml" "docker-compose.prod.yml" "Dockerfile" "index.js" "package.json" )

cd ..
mkdir -p "$ARTIFACT_DIR"
for i in "${FILES[@]}"
do
    cp $i "$ARTIFACT_DIR"
done