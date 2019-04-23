FROM archlinux/base:latest

ENV PLUGIN_REPO ''
ENV PLUGIN_FILES '*.pkg.tar.xz'
CMD set -xe \
    && for file in $(echo $PLUGIN_FILES | tr ',' ' '); do \
        repo-add "${PLUGIN_REPO}.db.tar.gz" "$file"; \
    done
