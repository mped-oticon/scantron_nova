{ 
  # Lock all nix-package versions to that which is released atomically together
  pkgs ? (import (builtins.fetchTarball {
           url = "https://github.com/nixos/nixpkgs/tarball/22.11";
           sha256 = "11w3wn2yjhaa5pv20gbfbirvjq6i3m7pqrq2msf0g7cv44vijwgw";
         }) {})
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.bash
    pkgs.curl
    pkgs.perl536Packages.XMLXPath
  ];

  shellHook = ''
    export LANG=C  # Appease perl

    source lib_scantron.source
  '';
}
