FROM archlinux/base
MAINTAINER MooYeol Lee "mooyoul@gmail.com"

RUN pacman -Syy && \
    pacman -S --noconfirm git sudo binutils gcc awk make diffutils fakeroot

RUN useradd untrunc && \
    echo "untrunc ALL=NOPASSWD: ALL" >> /etc/sudoers

USER untrunc

RUN cd /tmp && \
    git clone https://aur.archlinux.org/untrunc-git.git --depth=1 && \
    cd untrunc-git && \
    makepkg -si --noconfirm

ENTRYPOINT ["untrunc"]

