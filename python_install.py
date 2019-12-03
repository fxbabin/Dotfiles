#!/usr/bin/env python3

import subprocess

install_path = "/home/misteir"
miniconda_dir = install_path + "/miniconda3/bin"
python_path = subprocess.run(["which python"], shell=True, stdout=subprocess.PIPE)
script = "Miniconda3-latest-Linux-x86_64.sh"
requirements = "jupyter numpy pandas psycopg2"

if python_path.stdout.decode("utf8").find(install_path) == 0:
	print("good python version :)")
else:
	subprocess.run(["cd "+install_path], shell=True)
	subprocess.run(["curl -LO http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh"], shell=True)
	subprocess.run(["sh "+script+" -b -p "+install_path+"/miniconda3"], shell=True)
	subprocess.run(["conda install -y "+requirements], shell=True)
	out = subprocess.run(["grep \"^export PATH="+miniconda_dir+"\" ~/.zshrc"], shell=True, stdout=subprocess.PIPE)
	if out.stdout.decode("utf8") == "":
		subprocess.run(["echo \"export PATH="+miniconda_dir+"\" >> ~/.zshrc"], shell=True)
