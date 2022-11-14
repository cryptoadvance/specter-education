This repo contains training and educational material for Specter and Bitcoin in general. It's meant for onsite lectures from someone who is doing a talk and/or a workshop.

Trainings are composed of smaller units which can be seen in the `content`-folder. Most of the stuff there is Open Office presentations. As no one wants to have slidesets with 100s of slides, you usually want to vreak up the content in smaller units/slidesets.

An important task of this repo is to compile and package that content again into distributable units, html- and pdf-files which can be stored by learners, easy to consume and to also preserve in a self-sovereign manner, maybe even without internet access.

The PDF files are called `guides`. The definition is in the content.yaml file. Currently we have two guides:
* The "Specter Training Overview" guide is for people operating Onchain funds with the help of specter. It probably better should be named "Specter User Training". Some of the slidesets, especially in the beginning are quite generic and not specific to specter.
*  The "Specter Devops Training" guide should probably named "Specter Devops Overview" as there aren't many practical exercises in there.


Build the html/pdf-files via `build.sh`.

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

So we have 2 guides and therefore we'll have 2 pdf-file which are describing the "Specter Training Overview" training or the "Specter Devops Training". Those files are meant to give an overview of how the corresponding training looks like. It's a description of the content, not the content itself.

The key `filename` is specifying how the pdf-file will be named exactly. It also has a title. 

The content section is either referring to a file OR a directory in the content-directory.
If it's a file, it'll be added directly to the pdf. If it's a directory, it's search for a file called "description.md" in that directory and will add that to the pdf.

Apart from that Metadescription, each directory will result in a pdf which is adding all the presentations in one pdf having the same name than the directory. Those pdf are meant to be handed out to the learners whereas the filed in the content-directory are optimized to be maintainable by content-creators.


# Contributing

Help is more than welcome. Normal Fork and PR procedures are expected. However, please have in mind, that the odp-files are checked in binary. So unfortunately it's an issue with reviewing Change-requests.
I don't know how to tackle that issue longterm but in the short-term, rather focus on adding rather than changing. Create new sections and new guides and maybe make them smaller and pick and choose from existing content while adding more at the same time.
