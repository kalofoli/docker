#! /bin/bash

cmd=$1;shift


function usage() {
	cat << "EOF"
Docker entrypoint for Creedo/RealKD

Commands:
	realkd:         runs the realkd binary
	creedo:         launches the Creedo server (listens at URL http://localhost:8080/Creedo)
	shell:          Launches a bash shell as the creedo user.
	root:           passes on to bash as root.
	help:           this help
EOF
}

echo Action: $cmd
case $cmd in
	shell)
		cd ~creedo;
		su creedo;;
	realkd)
		cd ~creedo/realkd*
		echo Running realkd "$@"
		sudo -u creedo java -jar bin/realkd-0.7.1-SNAPSHOT-jar-with-dependencies.jar "$@" ;;
	root)
		exec /bin/bash;;
	creedo)
		service mysql start;
		cd ~creedo/Creedo-0.6.0;
		sudo -u creedo java -jar -Dapplication.config.file=../creedo.properties Creedo-0.6.0-war-exec.jar;;
	help)
		usage; exit 0;;
	*)
		echo Unknown action: $cmd.
		usage; exit 1;;
esac
