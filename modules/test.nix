{
	den.aspects.test = {
		perSystem = { pkgs, ... }: {
			packages.nvim = pkgs.stdenv.mkDerivation {
				pname = "neovim";
				version = "1.0.0";
			};
		};
	};
}
