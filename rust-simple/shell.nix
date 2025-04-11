let
  sha256 = "0d534853a55b5d02a4ababa1d71921ce8f0aee4c"; # 1.85
  pkgs = import
    (fetchTarball "https://github.com/NixOS/nixpkgs/archive/${sha256}.tar.gz")
    { };
in pkgs.mkShell {
  buildInputs = with pkgs; [ cargo rustfmt rustc rust-analyzer clippy ];
}
