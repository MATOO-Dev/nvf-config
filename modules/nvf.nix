{ inputs, ... }:
{
	systems = [
		"x86_64-linux"
	];

	perSystem = { ... }: {
		packages.default = (inputs.nvf.lib.neovimConfiguration {
			pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
			modules = [{
				config.vim.treesitter.enable = true;
			}];
		}).neovim;
	};
}
