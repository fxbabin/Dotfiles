

function set_conda {

    HOME=$(echo ~)
    INSTALL_PATH="/home/misteir"
    MINICONDA_PATH=$INSTALL_PATH"/miniconda3/bin"
    PYTHON_PATH=$(which python)
    SCRIPT="Miniconda3-latest-Linux-x86_64.sh"
    REQUIREMENTS="jupyter numpy pandas psycopg2"

    if echo $PYTHON_PATH | grep -q $INSTALL_PATH; then
	    echo "good python version :)"   
    else
	cd
	if [ ! -f $SCRIPT ]; then
		curl -LO http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
    	fi  
    	if [ ! -d $MINICONDA_PATH ]; then
	    	sh $SCRIPT -b -p $INSTALL_PATH"/miniconda3"
	fi
	conda install -y "jupyter" "numpy" "pandas" "psycopg2"
	clear
	echo "Which python:"
	which python
	if grep -q "^export PATH=$MINICONDA_PATH" ~/.zshrc
	then
		echo "export already in .zshrc";
	else
		echo "adding export to .zshrc ...";
		echo "export PATH=$MINICONDA_PATH:$PATH" >> ~/.zshrc
	fi
	source ~/.zshrc
    fi
}
