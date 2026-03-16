{ inputs, ... }:
{
	# imports = [
	# 	inputs.flake-aspects.flakeModule
	# ];

	systems = [
		"x86_64-linux"
	];

	# works, but uses flake parts, id prefer flake aspects
	flake.packages.x86_64-linux.default = (inputs.nvf.lib.neovimConfiguration {
		pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
		modules = [
			(inputs.import-tree ./modules)
		];
	}).neovim;
}
