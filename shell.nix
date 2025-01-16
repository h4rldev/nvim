{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  allowUnfree = true;
  name = "h4rl's nvim configuration";
  packages = with pkgs; [
    zsh
    stylua
    lua-language-server
  ];
  shellHook = ''
  '';
  # Additional configuration (if needed)
  RUST_BACKTRACE = 1;
}
