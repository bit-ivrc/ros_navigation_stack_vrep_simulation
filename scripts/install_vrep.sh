#!/bin/bash
set -e


# this script only installs the vrep simulator and import `VREP_ROOT` env
# variable to the ~/.bashrc file.

VREP_VERSION="V-REP_PRO_EDU_V3_5_0_Linux"
VREP_DIR_DEFAULT="$HOME/workspace/software/vrep"

main()
{
  echo "Installing dependence packages....."
  install_apt_pkgs
    # Install VREP to default location if VREP_ROOT environment variable not set
    if [ -z "$VREP_ROOT" ]; then
        install_vrep "$VREP_DIR_DEFAULT" "$VREP_VERSION"
    else
        # Check if VREP_ROOT is using the current version
        if ! [[ $VREP_ROOT == *"$VREP_VERSION"* ]]; then
            echo "WARNING, your VREP_ROOT is pointing to a different version" \
                "than the one suggested by this repo. Please update your" \
                "definition of VREP_ROOT if you wish to switch versions."
            echo "This repo suggests using version:"
            echo "$VREP_VERSION"
        fi

        # Check if a vrep folder is actually there
        if [ -d "$VREP_ROOT" ]; then
            echo "V-REP already installed at $VREP_ROOT"
        else
            echo "VREP_ROOT environment variable is pointing to a non-existant V-REP installation."
            echo "V-REP will be installed at the following location according to VREP_ROOT:"
            echo "$VREP_ROOT"
            install_vrep "$( dirname "${VREP_ROOT}" )" "$( basename "${VREP_ROOT}" )"
        fi
    fi
}

# Install
install_vrep()
{
    VREP_INSTALL_DIR="$1"
    INSTALL_VERSION="$2"
    INSTALL_ROOT="$VREP_INSTALL_DIR/$INSTALL_VERSION"

    if [ -d "$INSTALL_ROOT" ]; then
        echo "$VREP_VERSION is already installed"
    else
        echo "Installing V-REP ..."
        mkdir -p "$VREP_INSTALL_DIR"
        (cd "$VREP_INSTALL_DIR"
        rm -rf $VREP_VERSION*
        wget https://www.coppeliarobotics.com/files/$VREP_VERSION.tar.gz
        tar -xzf $VREP_VERSION.tar.gz
        rm -rf $VREP_VERSION.tar.gz)
        echo "V-REP installed successfully"
    fi

    # Link to user's bin
    mkdir -p "$HOME/bin"
    ln -sfn "$INSTALL_ROOT/vrep.sh" "$HOME/bin/vrep"

    # Add VREP_ROOT entry to bashrc
    if(grep -q "VREP_ROOT" ~/.bashrc); then
        echo "Found bashrc entry: VREP_ROOT=$VREP_ROOT"
    else
        echo "export VREP_ROOT=$INSTALL_ROOT" >> ~/.bashrc
    fi

    export VREP_ROOT="$INSTALL_ROOT"
    source ~/.bashrc
}

install_apt_pkgs()
{
  sudo apt-get update
  sudo apt-get install -qq lua5.1 liblua5.1-0-dev libgeographic-dev \
  python-lxml python-tempita xvfb screen
}

main
