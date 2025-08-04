{ bundlerApp, lib }:

bundlerApp {
  pname = "kamal";
  gemdir = ./.;
  exes = [ "kamal" ];

  meta = {
    description = "Deploy web apps anywhere";
    homepage = "https://kamal-deploy.org/";
    license = lib.licenses.mit;
    maintainers = lib.maintainers.sigmike;
    platforms = lib.platforms.unix;
    mainProgram = "kamal";
  };
}
