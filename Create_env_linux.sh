#!/bin/bash

create_env_linux() {
	clear

	echo "############################################"
	echo "  Creating Environment for the New Project  "
	echo "############################################"
	echo ""

	echo "Current directory: " $(pwd)
	echo ""
	echo -n "Fill the path for the project folder: "
	read pp
	cd $pp
	echo -n "Fill the project name: "
	read pn
	mkdir $pn
	echo "$pn/ folder created"
	cd $pn
	mkdir scr
	echo "$pn/scr/ folder created"
	mkdir tests
	echo "$pn/tests/ folder created"
	mkdir models
	echo "$pn/models/ folder created"
	mkdir data
	echo "$pn/data/ folder created"
	cd data
	mkdir raw
	echo "$pn/data/raw/ folder created"
	mkdir processed
	echo "$pn/data/processed/ folder created"
	cd ..
	mkdir notebooks
	echo "$pn/notebooks/ folder created"
	mkdir reports
	echo "$pn/reports/ folder created"
	cd reports
	mkdir figures
	echo "$pn/reports/figures/ folder created"
	cd ..
	echo ""
	echo "Folder structure creation completed"
	echo ""
	echo "Press any key to continue"
	read $k
	clear
	ls -l
}

create_env_linux