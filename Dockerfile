FROM mydatakeeper/archlinux

RUN set -xe \
    && pacman --noconfirm -Syu grep \
    && pacman -Scc --noconfirm


ENV PLUGIN_FILES '*.pkg.tar.xz'
CMD set -xe \
    && for file in $(echo $PLUGIN_FILES | tr ',' ' '); do \
        repo-add "${PLUGIN_REPO}.db.tar.gz" "$file"; \
    done
