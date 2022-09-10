## Site-dependent definitions included in Makefiles

## !!! Also verify the values in external_functions/ef_utility/site_specific.mk !!!

## =========================
## Full path name of the directory containing this file (the ferret root directory).
## Do not use $(shell pwd) since this is included in Makefiles in other directories.
## =========================
DIR_PREFIX = $(HOME)/git/myfork

## =========================
## Installation directory for built PyFerret.
## Using the "install" Makefile target creates a generic pyferret-*.tar.gz file
## and then extracts it to create a PyFerret installation at this location.
## =========================
INSTALL_FER_DIR = $(HOME)/my_fork_pyferret

## =========================
## Machine type for which to build Ferret/PyFerret
##   x86_64-linux      for 64-bit RHEL
##   x86_64-linux-gnu  for 64-bit Ubuntu and many "free" Linux systems
##   i386-linux        for 32-bit RHEL
##   i386-linux-gnu    for 32-bit Ubuntu and many "free" Linux systems
##   intel-mac         for Mac OSX
## =========================
BUILDTYPE = x86_64-linux

## =========================
## Python executable to invoke for build and install.
## =========================
PYTHON_EXE = python

## =========================
## Full path to the python include files directory.
## Should not need any modifications.
## =========================
PYTHONINCDIR := $(shell $(PYTHON_EXE) -c "from __future__ import print_function ; import distutils.sysconfig; print(distutils.sysconfig.get_python_inc())")

## =========================
## If given and not empty, the full path name to the gfortran library to use.
## This is primarily used for the intel-mac build.
## The given scripts (commented out) should provide the correct value for the gfortran libraries.
## If empty or not given, the gfortran library is linked in using the "-lgfortran" flag.
## =========================
GFORTRAN_LIB = 

## =========================
## Directory containing the Cairo static libraries (v1.12 or later).
## Include files are assumed to be located in an "include" sibling directory.
## If given and not empty, the Cairo static libraries found under this directory will be used.
## If empty or not given, the system's Cairo shared libraries will be used.
## =========================
CAIRO_LIBDIR = /home/ansman/miniconda3/envs/FERRET/lib

## =========================
## Directory containing the Pixman static libraries used by the above Cairo static libraries.
## Include files are assumed to be located in an "include" sibling directory.
## If given and not empty, the Pixman-1 static libraries found in this directory will be used.
## If empty or not given, the system's Pixman-1 shared library will be used.
## This value should be empty or not given if CAIRO_LIBDIR is empty or not given.
## =========================
PIXMAN_LIBDIR = /home/ansman/miniconda3/envs/FERRET/lib

## =========================
## Directory containing the Pango shared libraries.
## Include files are assumed to be located in an "include" sibling directory.
## If given and not empty, the Pango shared libraries under this directory are used.
## If empty or not given, the system's Pango shared libraries are used.
## This value should be empty or not given if CAIRO_LIBDIR is empty or not given.
## =========================
PANGO_LIBDIR = /home/ansman/miniconda3/envs/FERRET/lib

## =========================
## Library directory containing a "glib-2.0" subdirectory with GLib-2.0 include file(s)
## (yes, a little unusual) used by the above Pango shared libraries.
## An "include" sibling directory containing a "glib-2.0" subdirectory with more
## GLib-2.0 include files is assumed to exist.
## If given and not empty, GLib-2.0 include files under this directory are used.
## If empty or not given, the system's GLib-2.0 shared libraries are used.
## This value should be empty or not given if PANGO_LIBDIR is empty or not given.
## =========================
GLIB2_LIBDIR = /home/ansman/miniconda3/envs/FERRET/lib


## =========================
## Directory containing the HDF5 static libraries.
## Include files are assumed to be located in an "include" sibling directory.
## If given and not empty, HDF5 and NetCDF static libraries will be used.
## If empty or not given, NetCDF shared libraries (which specify the HDF5 and
## compression libraries required) will be used.
## =========================
# HDF5_LIBDIR =

## =========================
## Location of the SZ compression static library.
## This value should be given only if the SZ compression library was used in
## building the HDF5 library, and the NetCDF and HDF5 static libraries are being
## used (HDF5_LIBDIR is given and not empty).
## If given and not empty, the SZ compression static library is used.
## If empty or not given, the SZ compression library will not be used
## (which is what you want if the HDF5 libraries were built using the Z compression library).
## =========================
SZ_LIBDIR =

## =========================
## Location of the NetCDF libraries.
## Include files are assumed to be located in an "include" sibling directory.
## If HDF5_LIBDIR is given and not empty, the static libraries will be used
## (along with the HDF5 static libraries).
## If HDF5_LIBDIR is empty or not given, NetCDF shared libraries will be used.
## =========================
NETCDF_LIBDIR = /home/ansman/miniconda3/envs/FERRET/lib

##
