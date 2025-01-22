{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { nixpkgs, ... }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    # Define the development shell
    devShells.${system}.default = pkgs.mkShell {
      # Install the required Python environment with packages
      packages = [
        pkgs.typst
      ];

      shellHook = ''
        export TYPST_FONT_PATHS="./Source_Sans_Pro_ttf/Source_Sans_Pro_ttf/" 
      '';
    };
  };
}

