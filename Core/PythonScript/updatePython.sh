python3 positionToQuadrant.py > ../pos_to_quadrant.v
python3 memoryGenerator.py > ../cellMemory.v
python3 printCircle.py > circle.txt
python3 printCross.py > cross.txt
cross=$(<cross.txt)
circle=$(<circle.txt)
cross=${cross:6}
circle=${circle:6}

