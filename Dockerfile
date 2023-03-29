FROM nloomans/codam:latest

RUN pacman-db-upgrade
RUN pacman -Syyuu --noconfirm
RUN pacman -S gdb --noconfirm --disable-download-timeout
RUN pacman -S neovim --noconfirm --disable-download-timeout
ENV DEBUGINFOD_URLS="https://debuginfod.archlinux.org"
