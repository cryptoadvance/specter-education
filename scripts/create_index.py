import datetime
import json
import logging
import re
import sys
import os


from jinja2 import Environment, FileSystemLoader, select_autoescape
from jinja2.utils import markupsafe 

logger = logging.getLogger(__name__)
stoh = logging.StreamHandler(sys.stderr)
fmth = logging.Formatter("[%(levelname)s] %(asctime)s %(message)s")
stoh.setFormatter(fmth)
logger.addHandler(stoh)
logger.setLevel(logging.DEBUG)


def website(content):
  ''' generates the index.html '''
  env = Environment( loader=FileSystemLoader('./templates'), autoescape=select_autoescape(['html', 'xml']))
  env.filters['markdown'] = lambda text: markupsafe.Markup(md.convert(text))
  env.globals['get_title'] = lambda: md.Meta['title'][0]
  env.trim_blocks = True
  env.lstrip_blocks = True
  template = env.get_template('index.html')
  # clean content
  for guide_key, guide in content["guides"].items():
    print(guide_key)
    new_sections = []
    for section in guide["content"]:
      if os.path.isdir(f"content/{section}") :
        
        new_sections.append(section)
    content["guides"][guide_key]["content"]= new_sections
  with open("build/index.html", 'w') as f:
    f.write(template.render( content=content))

if __name__ == "__main__":
    from build import load_content

    content = load_content()
    website(content)