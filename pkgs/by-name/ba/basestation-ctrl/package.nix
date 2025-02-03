{
  lib,
  python3,
  fetchFromGitHub,
}:
python3.pkgs.buildPythonApplication rec {
  pname = "basestation-ctrl";
  version = "0.3.2";

  src = fetchFromGitHub {
    owner = "schlagenhauf";
    repo = "basestation-ctrl";
    tag = "v${version}";
    sha256 = "sha256-iAFby1w+vIY3dDI5mxOLAEoRA87ZPbrHmm84T9zOPlE=";
  };

  propagatedBuildInputs = [
    python3.pkgs.click
    python3.pkgs.bluepy
  ];

  meta = {
    description = "Python Library and CLI to wake up / power down SteamVR (Lighthouse) Base Stations";
    homepage = "https://github.com/schlagenhauf/basestation-ctrl";
    platforms = lib.platforms.unix;
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.sigmike ];
  };
}
