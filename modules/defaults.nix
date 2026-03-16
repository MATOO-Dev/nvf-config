{ inputs, ... }:
{
	imports = with inputs; [ 
		den.flakeModule
		flake-parts.flakeModules.modules
	];

	config.systems = [ "x86_64-linux" ];
}
