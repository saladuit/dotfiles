FROM archlinux/archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -Syu gdb valgrind --noconfirm
RUN pacman -Syu gstreamer gst-plugins-bad gst-plugins-base gst-plugins-good meson ninja gcc cmake git python-pip make --noconfirm
RUN pacman -Syu pkg-config --noconfirm
ENV DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

RUN pacman -Syu --noconfirm bash git lua nodejs npm lazygit bottom python3 go neovim ripgrep
RUN git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
RUN pip install compiledb
RUN git clone https://github.com/saladuit/astronvim_config.git ~/.config/nvim/lua/user
RUN nvim --headless -c "quitall"
