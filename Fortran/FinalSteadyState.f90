SUBROUTINE FinalSteadyState 

USE Parameters
USE Globals
USE Procedures

IMPLICIT NONE

INTEGER		:: iy

IF (Display>=1) write(*,*) "Solving for final steady state"

DO iy = 1,ngpy
	ALLOCATE(solnFINALSS%A(iy)%val(solnINITSS%A(iy)%nz),solnFINALSS%A(iy)%row(solnINITSS%A(iy)%n+1),solnFINALSS%A(iy)%col(solnINITSS%A(iy)%nz))
	ALLOCATE(solnFINALSS%B(iy)%val(solnINITSS%B(iy)%nz), solnFINALSS%B(iy)%col(solnINITSS%B(iy)%nz), solnFINALSS%B(iy)%row(solnINITSS%B(iy)%n+1))
END DO
!write(*,*) 'Allocation Finished'
solnFINALSS = solnINITSS
!write(*,*) 'solnFINALSS Finished'
equmFINALSS = equmINITSS
!write(*,*) 'equmFINALSS Finished'
statsFINALSS = statsINITSS
!write(*,*) 'statsFINALSS Finished'

END SUBROUTINE FinalSteadyState