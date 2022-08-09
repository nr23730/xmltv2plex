FROM alpine:3.16.2

RUN apk add --no-cache bash wget grep coreutils xmlstarlet
COPY ./export.sh /export.sh
ENTRYPOINT [ "/export.sh" ]