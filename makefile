ALL: pbratu
include ${PETSC_DIR}/lib/petsc/conf/rules
include ${PETSC_DIR}/lib/petsc/conf/variables

pbratu : pbratu.o chkopts
	-${CLINKER} -o $@ $< ${PETSC_SNES_LIB}
	rm -f pbratu.o
