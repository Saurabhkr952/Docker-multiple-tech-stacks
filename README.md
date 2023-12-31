# Docker-multiple-tech-stacks
Master Docker Image Creation: Explore all programming languages, use cache layering &amp; mounting, implement multi-stage builds, leverage distroless images, and ensure top-tier image security.


docker build --build-arg AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
        --build-arg AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
        --build-arg AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN \
        -t $REGISTRY/$REPOSITORY:$IMAGE_TAG .
        docker push $REGISTRY/$REPOSITORY:$IMAGE_TAG
