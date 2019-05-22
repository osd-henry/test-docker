#/bin/bash
ARTIFACT_DIR="artifacts"
FILES=( ".dockerignore" "docker-compose.yml" "docker-compose.prod.yml" "Dockerfile" "index.js" "package.json" )

cd ..
echo "Copying to artifact folder: $ARTIFACT_DIR ..."
mkdir -p "$ARTIFACT_DIR"
for i in "${FILES[@]}"
do
    cp "source/$i" "$ARTIFACT_DIR"
done

echo "$PWD/$ARTIFACT_DIR:"
ls "$ARTIFACT_DIR" | sed "s/^/ - /"