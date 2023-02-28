FROM archlinux/archlinux:latest


# Install basic programs
RUN pacman -Syu gcc clang cmake make git gdb valgrind man-pages less base-devel openssh lcov --noconfirm

# makepkg user and workdir
ARG user=makepkg
RUN sudo useradd --system --create-home $user \
  && echo "$user ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/$user
USER $user
WORKDIR /home/$user

# Needed for gdb to work
ENV DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

# Install yay
RUN git clone https://aur.archlinux.org/yay.git \
  && cd yay \
  && makepkg -sri --needed --noconfirm \
  && cd \
  # Clean up
  && rm -rf .cache yay

#install Astronvim and its dependencies
RUN sudo pacman -Syu --noconfirm lua nodejs npm lazygit bottom python3 go neovim ripgrep unzip wget python-pip
RUN pip install compiledb
RUN git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
RUN git clone https://github.com/saladuit/astronvim_config.git ~/.config/nvim/lua/user
RUN nvim --headless -c "autocmd User PackerComplete quitall"
RUN nvim --headless +"MasonInstall clangd codelldb" +qa 
RUN sudo -u makepkg yay -S --mflags --nocheck --noconfirm criterion
ENV export PATH="/home/makepkg/.local/bin:$PATH"
