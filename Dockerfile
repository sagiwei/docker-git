FROM alpine

RUN apk fix && \
    apk --no-cache --update add git git-lfs git-subtree gpg less openssh patch && \
    git lfs install

WORKDIR /git
CMD ["git", "--help"]
