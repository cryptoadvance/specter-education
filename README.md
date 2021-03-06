This repo contains training and educational material for Specter.

Trainings are composed of smaller units which can be seen in the `content`-folder. An important task of this repo is to compile and package that content into distrubutable units, html- and pdf-files.

The PDF files are called `guides`. The definition is in the content.yaml file. Currently we only have one guide: "default".

Build the html-pdf-files via `build.sh`.

If you are on MacOS:

* The shell command pdfunite might not be availabe:  
`brew install popper`  
	See: https://superuser.com/questions/897670/no-available-formula-for-pdfunite-in-homebrew

* If you run into dependencies issues with build.py, chances are that WeasyPrint is lacking some libraries:  
`brew install cairo pango gdk-pixbuf libffi`  
	See: https://weasyprint.readthedocs.io/en/stable/install.html















