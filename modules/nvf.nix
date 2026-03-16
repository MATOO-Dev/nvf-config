{ inputs, ... }:
let
  pkgs = import inputs.nixpkgs {
    system = "x86_64-linux";
    hostPlatform = "x86_64-linux";
    config = {

      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };
in
{
  systems = [
    "x86_64-linux"
  ];

  perSystem =
    { ... }:
    {
      packages.default = inputs.nvf.lib.neovimConfiguration {
        config.vim.setupOpts.view.relativeNumber = true;
      };
    };
}
