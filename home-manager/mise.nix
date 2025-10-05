{ pkgs }:

{
  enable = true;
  enableZshIntegration = true;
  globalConfig = {
    tools = {
      ruby = "3.4.6";
    };
  };
}
