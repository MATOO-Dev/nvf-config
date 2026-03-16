{
	flake.aspects.nvf = { inputs, nixpkgs, ... }: {
		packages.x86_64-linux.my-neovim = (
			inputs.nvf.lib.neovimConfiguration {
				pkgs = nixpkgs.legacyPackages.x86_64-linux;
				modules = [
					(
						{ pkgs, ... }: {
							config.vim.setupOpts.view.relativeNumber = true;
						}
					)
				];
			}
		);
	};
}
