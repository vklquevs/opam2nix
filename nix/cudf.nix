{stdenv, fetchurl, ocaml, camlp4, findlib, ocaml_extlib, perl }:
stdenv.mkDerivation {
	name = "cudf";
	src = fetchurl {
		url = "https://gforge.inria.fr/frs/download.php/33593/cudf-0.7.tar.gz";
		sha256 = "00d76305h8yhzjpjmaq2jadnr5kx290spaqk6lzwgfhbfgnskj4j";
	};
	buildInputs = [ocaml findlib camlp4 ocaml_extlib perl];
	buildPhase = "make all opt";
    installFlags = "DESTDIR=$(out) OCAMLLIBDIR=lib/ocaml/4.02.3/site-lib/";
	createFindlibDestdir = true;
}

