{
  description = "MATOO's neovim flake using NVF";

  inputs = {
    # packages
    nixpkgs.url = "github:nixos/nixpkgs/25.11";

    # nvim framework
    nvf.url = "github:notashelf/nvf";

    # config architecture
    # den.url = "github:vic/den";
    # flake-aspects.url = "github:vic/flake-aspects";
    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";
  };

  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./modules);

  # outputs = { nixpkgs, ... } @inputs: {
  # 	packages.x86_64-linux.default = (
  # 		inputs.nvf.lib.neovimConifuration {
  # 			pkgs = nixpkgs.legacyPackages.x86_64-linux;
  # 			modules = [
  # 				{
  # 					config.vim = {
  #
  # 					};
  # 				}
  # 			];
  # 		}
  # 	).neovim;
  # };
}
