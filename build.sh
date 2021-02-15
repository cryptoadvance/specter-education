#!/bin/bash

if ! [ -x .env ]; then
    virtualenv --python=python3 .env
    . ./.env/bin/activate
    pip3 install markdown WeasyPrint
else
    . ./.env/bin/activate
fi

python3 <<END
import markdown




with open("README.md", "r", encoding="utf-8") as input_file:
    text = input_file.read()

# https://python-markdown.github.io/reference/#the-basics
pure_html = markdown.markdown(text,extensions=['toc','tables','sane_lists'])

html=f'''
<html>
<head>
<link rel="stylesheet" href="mystyle.css">
</head>
<body>
    <article id="cover">
      <h1>Training Example</h1>
      <address>
        Cryptoadvance
      </address>
      <address>
        https://specter.solutions
      </address>
    </article>
{pure_html}
</body>
<html>
'''

# late import because:
# https://github.com/Python-Markdown/markdown/issues/950
from weasyprint import HTML

with open("build/readme.html","w", encoding="utf-8") as html_file:
    html_file.write(html)

HTML('./build/readme.html').write_pdf('./build/README.pdf')

END


