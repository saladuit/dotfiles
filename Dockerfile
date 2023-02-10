FROM nloomans/codam:latest

RUN pacman-db-upgrade
RUN pacman -Syyuu gdb --noconfirm
ENV DEBUGINFOD_URLS="https://debuginfod.archlinux.org"
