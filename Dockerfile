FROM alpine:3.17.1

RUN apk add --no-cache bash wget grep coreutils xmlstarlet
COPY ./export.sh /export.sh
ENTRYPOINT [ "/export.sh" ]