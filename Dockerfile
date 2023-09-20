FROM alpine:3.18.3

RUN apk add --no-cache bash wget grep coreutils xmlstarlet
RUN chmod +x /export.sh
COPY ./export.sh /export.sh
ENTRYPOINT [ "/export.sh" ]
