# This works on Ubuntu 18.04, 64 bit. Produces libodbc_ext.so
# Install it by for example:
# sudo cp libodbc_ext.so /usr/lib/
# sudo ldconfig

cd cpp/src
g++ -fPIC -shared -O2 -DBUILD_REAL_64_BIT_MODE -DSIZEOF_LONG=8 -I/usr/lib/dart/include -o ../../libodbc_ext.so odbc_ext.cc odbc_ext_box.cc odbc_ext_sql.cc -lodbc
cd ../..