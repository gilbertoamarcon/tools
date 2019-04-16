# IPA Fix
sudo apt-get -y install libdlib*
sudo apt-get -y install libopengm-*
./get-opengm.sh
sudo sed -i '17s/^/#/' /usr/lib/cmake/dlib/dlib-none.cmake
for f in $(ls /usr/lib/cmake/dlib/); do sudo cp /usr/lib/cmake/dlib/$f /usr/lib/cmake/dlib/lib$f; done
roscd 
find src/ipa_room_segmentation/ -type f | xargs sed -i 's/libdlib\//dlib\//g'


catkin_make
echo 'libdlib_DIR:PATH=/usr/lib/cmake/dlib/' >> build/CMakeCache.txt
echo 'opengm_DIR:PATH=/usr/lib/cmake/opengm/' >> build/CMakeCache.txt
sed -i 's/libdlib_DIR.*/libdlib_DIR\:PATH\=\/usr\/lib\/cmake\/dlib\//g' build/CMakeCache.txt
sed -i 's/opengm_DIR.*/opengm_DIR\:PATH\=\/usr\/lib\/cmake\/opengm\//g' build/CMakeCache.txt
catkin_make
