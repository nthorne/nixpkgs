with import <nixpkgs> { };

buildPythonPackage rec {
    name = "git_big_picture";
    version = "0.9.0";

    src = fetchgit {
      url = https://github.com/esc/git-big-picture;
      rev = "fbe3b9504e255da859067fd58e90d849d63e5381";
      sha256 = "1h283gzs4nx8lrarmr454zza52cilmnbdrqn1n33v3cn1rayl3c9";
    };

  propagatedBuildInputs = [ python27Full git graphviz ];
}
