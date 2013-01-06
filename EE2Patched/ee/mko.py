import os
import sys
import shutil


nodes = os.listdir('.\\')

for node in nodes:
	if node.find('.o') > -1:
		os.remove(node)
		continue
	try:
		shutil.copy2(node, '%s.o' % node)	
	except Exception as e:
		pass