# dtools
Multitude of rna structure programs made to run through docker (No Setup Required)

## Prerequisites
Make sure you have docker installed. We provide an installation script for ubuntu 20.04.
You will have to run it with elevated privileges (not as root)
```sudo ./install_docker.sh```

## Important
Always use the ```files``` folder to pass files to and from programs.

## DinoKnot
Install by running
```./Dinoknot/install.sh```

Run the program (remember to pass arguments)
```./Dinoknot/run.sh```

Example usage
```./Dinoknot/run.sh -i files/dinoknot_example.txt --t1 RNA --t2 DNA -o files/outputfile.txt```

## HFold
Install by running
```./Hfold/install.sh```

Run the program (remember to pass arguments)
```./Hfold/run.sh```

Example usage
```./Hfold/run.sh --i files/hfold_example.txt --o files/outputfile.txt```

## Iterative HFold
Install by running
```./Iterative-Hfold/install.sh```

Run the program (remember to pass arguments)
```./Iterative-Hfold/run.sh```

Example usage
```./Iterative-Hfold/run.sh --i files/iterative-hfold_example.txt --o files/outputfile.txt```

## Knotty
Install by running
```./Knotty/install.sh```

Run the program (remember to pass arguments)
```./Knotty/run.sh```

Example usage
```./Knotty/run.sh GCAACGAUGACAUACAUCGCUAGUCGACGC > files/outputfile.txt```

## IPknot
Install by running
```./Ipknot/install.sh```

Run the program (remember to pass arguments)
```./Ipknot/run.sh```

Example usage
```./Ipknot/run.sh files/ipknot_example.txt > files/outputfile.txt```

## HotKnots
Install by running
```./Hotknots/install.sh```

Run the program (remember to pass arguments)
```./Hotknots/run.sh```

Example usage
```./Hotknots/run.sh -I files/hotknots_example > files/outputfile.txt```

## SPOT-RNA
Install by running
```./Spot-Rna/install.sh```

Run the program (remember to pass arguments)
```./Spot-Rna/run.sh```

Example usage
```./Spot-Rna/run.sh --inputs files/spotrna_example.txt --outputs 'files/' --cpu 32```