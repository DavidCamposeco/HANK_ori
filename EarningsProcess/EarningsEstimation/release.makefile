FC = ifort
FCFLAGS = -m64 -traceback -O3 -qopenmp -implicitnone  
LDFLAFS = -m64 -traceback -O3 -qopenmp -implicitnone  

PROG = $(OUT)

MOD = Parameters.o Globals.o Procedures.o random.o

SUBR = 	MakeGuess.o Estimation.o Simulate.o ComputeMoments.o SetParameters.o dfovec.o newuoa-h.o newuob-h.o update.o trsapp-h.o biglag.o bigden.o InvertMatrix.o SaveOutput.o


OBJ = $(MOD) $(SUBR)

Main: $(OBJ) Main.o
	$(FC) $(LDFLAGS)   $^ -o  $@ $(FCFLAGS)

%.o: %.f90
	$(FC) $(FCFLAGS) -c $<