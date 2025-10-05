{
  pkgs,
  username,
}:

let
  nixProfile = "/etc/profiles/per-user/${username}/bin";
  swBin = "/run/current-system/sw/bin";
in
{
  EDITOR = "vim";
  LANG = "en_US.UTF-8";
  PATH = "${nixProfile}:${swBin}:$PATH";
}
