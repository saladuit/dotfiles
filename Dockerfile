FROM nloomans/codam:latest

RUN pacman-db-upgrade
RUN pacman -Syyuu gdb --noconfirm
