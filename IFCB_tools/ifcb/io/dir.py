import os
import ifcb
from file import newBin
import re
from ifcb.io import Timestamped, ADC_EXT, HDR_EXT, ROI_EXT
from ifcb.util import gen2list
from ifcb.io.pids import parse_id
import os.path

"""Interpretation and traversal of IFCB directory structure"""

# represents a directory containing a single day's worth of data for a single instrument
class DayDir(Timestamped):
	"""Represents an instrument/day directory (e.g., IFCB5_2011_0132)
	
	Iterable: returns all bins"""
	dir = '.'
	time_format = '%Y_%j' # FIXME ID format
	
	def __init__(self, dir='.'):
		self.dir = dir
		oid = parse_id(self.pid)
		self.time_format = oid.date_format
		self.time_string = oid.yearday
				
	def __repr__(self):
		return '{DayDir ' + self.pid +' @ '+str(self.dir)+'}'
	
	@property
	def pid(self):
		return ifcb.pid(os.path.basename(self.dir))
	
	def __all_exist(self,path):
		(n,ext) = os.path.splitext(path)
		for e in [ADC_EXT, HDR_EXT, ROI_EXT]:
			if not os.path.exists('.'.join([n,e])):
				return False
		return True
	
	def __iter__(self):
		try:
			exts = {}
			for item in sorted(os.listdir(self.dir)):
				f = os.path.join(self.dir, item)
				if re.search(r'\.[a-z]+$',f):
					(lid,ext) = re.match('.*/(.*)\.([a-z]+)$',f).groups()
					if lid not in exts:
						exts[lid] = []
					exts[lid].append(ext)
					if 'hdr' in exts[lid] and 'adc' in exts[lid] and 'roi' in exts[lid]:
						yield newBin(f)
		except OSError:
			pass
	
	def all_bins(self):
		"""Return all bins in this day"""
		return list(self)
	
# represents a directory containing day directories
class YearsDir:
	"""Represents a directory containing day directories.
	
	Iterable: returns all instrument/day directories in the years directory"""
	dir = '.'
	instrument = '.' # regex matching the IFCB{instrument}_ part of the dir name
	
	def __init__(self, dir='.', instrument='.'):
		self.dir = dir
		self.instrument = instrument

	def __iter__(self):
		try:
			for item in sorted(os.listdir(self.dir)):
				f = os.path.join(self.dir, item)
				if parse_id(f).isday:
					yield DayDir(os.path.abspath(f))
		except OSError:
			noop = None # FIXME log
				
	def all_days(self):
		"""Return all day dirs in this directory"""
		return list(self)
	
