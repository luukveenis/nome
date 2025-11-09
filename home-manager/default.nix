{
  pkgs,
  nixvim,
  stateVersion,
  username,
}:

{
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.${username} =
      { pkgs, ... }:
      {
        home = {
          inherit (pkgs.lib) homeDirectory;
          file = {
            ".inputrc" = {
              text = "set editing-mode vi";
              executable = false;
            };
          };
          packages = import ./packages.nix { inherit pkgs; };
          sessionVariables = import ./env.nix { inherit pkgs username; };
          # shellAliases = (import ./aliases.nix { inherit pkgs; }).shell;
          inherit stateVersion username;
        };
        imports = [ nixvim.homeModules.nixvim ];
        programs = import ./programs.nix { inherit pkgs; };
      };
  };
}
