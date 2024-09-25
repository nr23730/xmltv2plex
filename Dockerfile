FROM alpine:3.20.3

RUN apk add --no-cache bash wget grep coreutils xmlstarlet
COPY ./export.sh /export.sh
RUN chmod +x /export.sh
ENTRYPOINT [ "/export.sh" ]
