#!/usr/bin/env python
import sys
imports requests
from bs4 import BeautifulSoup
res = requests.get(sys.argv[-1])
soup = BeautifulSoup(res.text, "html.parser")
for link in soup.find_all("a")
print(link.get("href"))
