{
  description =
    "
      [my•nix•ui], derived from the japanese word 醜い(minikui), meaning ugly,
      or unsightly, is a series of widgets for Linux, written with eww & yuck,
      which together provide a full desktop environment, loaded via nix flake.
    ";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

  };
}
