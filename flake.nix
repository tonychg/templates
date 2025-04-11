{
  description = "A collection of flake templates";

  outputs = { self }: {

    templates = {

      base = {
        path = ./base;
        description = "A very basic flake";
      };

      python = {
        path = ./python;
        description = "Python template, using poetry2nix";
      };

      rust = {
        path = ./rust;
        description = "Rust template, using Naersk";
      };

      rust-simple = {
        path = ./rust-simple;
        description = "Rust template using nix-shell";
      };
    };

    defaultTemplate = self.templates.base;

  };
}
