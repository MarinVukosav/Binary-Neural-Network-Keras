from __future__ import print_function

import h5py
import sys
import numpy
numpy.set_printoptions(threshold=sys.maxsize)
def print_structure(weight_file_path):
    """
    Prints out the structure of HDF5 file.

    Args:
      weight_file_path (str) : Path to the file to analyze
    """
    f = h5py.File("./mnist_nn_quantized_zeroone_FC.h5")
    file = open("datafile.txt","a")

    try:
        if len(f.attrs.items()):
            print("{} contains: ".format(weight_file_path))
            print("Root attributes:")
        for key, value in f.attrs.items():
            print("  {}: {}".format(key, value))

        if len(f.items())==0:
            return 

        for layer, g in f.items():
            print("  {}".format(layer))
            print("    Attributes:")
            for key, value in g.attrs.items():
                print("      {}: {}".format(key, value))

            print("    Dataset:")
            for p_name in g.keys():
                param = g[p_name]
                subkeys = param.keys()
                for k_name in param.keys():
                    file.write("      {}/{}: {}".format(p_name, k_name, (param.get(k_name)[:]+1)/2))
                    #print("      {}/{}: {}".format(p_name, k_name, param.get(k_name)[:]))
                    
    finally:
        f.close()

print_structure("./mnist_nn_quantized_zeroone_FC.h5");
