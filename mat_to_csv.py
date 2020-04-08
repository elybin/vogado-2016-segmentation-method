import scipy.io
import numpy as np

data = scipy.io.loadmat("Rombel1.mat")

for i in data:
	if '__' not in i and 'readme' not in i:
		np.savetxt(("filesforyou.csv"),data[i],delimiter=',')