This repo contains training and educational material for Specter.

Trainings are composed of smaller units which can be seen in the `content`-folder. An important task of this repo is to compile and package that content into distributable units, html- and pdf-files.

The PDF files are called `guides`. The definition is in the content.yaml file. Currently we only have one guide: "default".

Build the html-pdf-files via `build.sh`.

If you are on MacOS:

* The shell command pdfunite might not be availabe:  
`brew install popper`  
	See: https://superuser.com/questions/897670/no-available-formula-for-pdfunite-in-homebrew

* If you run into dependencies issues with build.py, chances are that WeasyPrint is lacking some libraries:  
`brew install cairo pango gdk-pixbuf libffi`  
	See: https://weasyprint.readthedocs.io/en/stable/install.html


# Build-process

The `content.yaml` might look like this:

```yaml
---
guides:
  overview:
    filename: Specter-Training-Overview
    title: Specter Training Overview
    content:
    - disclaimer
    - about_formats
    - bitcoin101
    - bitcoin201
    - multisig101
    - production_setup
  training:
    filename: Specter-Devops-Training
    title: Specter Devops Training
    content:
    - disclaimer
    - about_formats
    - deployment-operations
```

So we have 2 guides and therefore we'll have 2 pdf-file which are describing the "Specter Training Overview" training or the "Specter Devops Training". The filename is specifying how the pdf-file will be named exactly. It also has a title. 
The content section is either referring to a file OR a directory in the content-directory.
If it's a file, it'll be added directly to the pdf. If it's a directory, it's search for a file called "description.md" in that directory and will add that to the pdf.

Apart from that, each directory will result in a pdf which is adding all the presentations in one pdf having the same name than the directory.


















