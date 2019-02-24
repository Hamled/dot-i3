#!/usr/bin/env bash
#
# Hamled/i3 ellipsis package

ELLIPSIS_VERSION_DEP='1.9.4'

pkg.link() {
  mkdir -p "$ELLIPSIS_HOME/.config"
  fs.link_file "$PKG_PATH" "$ELLIPSIS_HOME/.config/i3"
}

pkg.unlink() {
  rm "$ELLIPSIS_HOME/.config/i3"

  hooks.unlink
}
