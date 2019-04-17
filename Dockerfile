FROM mydatakeeper/archlinuxarm:aarch64

ENV PLUGIN_REPO 'mydatakeeper'
ENV PLUGIN_FILES '*.pkg.tar.xz'
CMD set -xe \
    && for file in $(echo $PLUGIN_FILES | tr ',' ' '); do \
        && repo-add "${PLUGIN_REPO}.db.tar.gz" "$file"; \
    done