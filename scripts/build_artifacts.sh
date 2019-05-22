#/bin/bash
ARTIFACT_DIR="artifacts"
FILES=( ".dockerignore" "docker-compose.yml" "docker-compose.prod.yml" "Dockerfile" "index.js" "package.json" )

cd ..
echo "Ensure folder $ARTIFACT_DIR"
mkdir -p "$ARTIFACT_DIR"
for i in "${FILES[@]}"
do
    echo "Copying source/$i..."
    cp "source/$i" "$ARTIFACT_DIR"
done

ls "$ARTIFACT_DIR"