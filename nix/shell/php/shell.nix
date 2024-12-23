# shell.nix

{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.php
    pkgs.phpPackages.composer # Para usar o Composer (gerenciador de dependências PHP)
  ];

  # Se precisar de mais extensões PHP, você pode adicioná-las aqui, como:
  # pkgs.phpPackages.mbstring
  # pkgs.phpPackages.opcache
}
