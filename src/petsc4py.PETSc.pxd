# --------------------------------------------------------------------

cdef extern from "mpi.h":
    ctypedef struct _p_MPI_Comm
    ctypedef _p_MPI_Comm* MPI_Comm

cdef extern from "petsc.h":
    ctypedef int    PetscInt
    ctypedef double PetscReal
    ctypedef double PetscScalar
    ctypedef PetscInt    const_PetscInt    "const PetscInt"
    ctypedef PetscReal   const_PetscReal   "const PetscReal"
    ctypedef PetscScalar const_PetscScalar "const PetscScalar"

cdef extern from "petsc.h":
    ctypedef struct _p_PetscObject
    ctypedef _p_PetscObject* PetscObject
    struct _p_PetscViewer
    ctypedef _p_PetscViewer* PetscViewer

cdef extern from "petscsys.h":
    struct _p_PetscRandom
    ctypedef _p_PetscRandom* PetscRandom

cdef extern from "petscis.h":
    struct _p_IS
    ctypedef _p_IS* PetscIS "IS"
    struct _p_ISLocalToGlobalMapping
    ctypedef _p_ISLocalToGlobalMapping* PetscLGMap "ISLocalToGlobalMapping"

cdef extern from "petscvec.h":
    struct _p_Vec
    ctypedef _p_Vec* PetscVec "Vec"
    struct _p_VecScatter
    ctypedef _p_VecScatter* PetscScatter "VecScatter"

cdef extern from "petscmat.h":
    struct _p_Mat
    ctypedef _p_Mat* PetscMat "Mat"
    struct _p_MatNullSpace
    ctypedef _p_MatNullSpace* PetscNullSpace "MatNullSpace"

cdef extern from "petscpc.h":
    struct _p_PC
    ctypedef _p_PC* PetscPC "PC"

cdef extern from "petscksp.h":
    struct _p_KSP
    ctypedef _p_KSP* PetscKSP "KSP"

cdef extern from "petscsnes.h":
    struct _p_SNES
    ctypedef _p_SNES* PetscSNES "SNES"

cdef extern from "petscts.h":
    struct _p_TS
    ctypedef _p_TS* PetscTS "TS"

# --------------------------------------------------------------------

## ctypedef PetscInt    Int
## ctypedef PetscReal   Real
## ctypedef PetscScalar Scalar

cdef public api class Comm [type PyPetscComm_Type, object PyPetscCommObject]:
    cdef MPI_Comm comm
    cdef int isdup

cdef public api class Object [type PyPetscObject_Type, object PyPetscObjectObject]:
    cdef PetscObject oval
    cdef PetscObject *obj

cdef public api class Viewer(Object) [type PyPetscViewer_Type, object PyPetscViewerObject]:
    cdef PetscViewer vwr

cdef public api class Random(Object) [type PyPetscRandom_Type, object PyPetscRandomObject]:
    cdef PetscRandom rnd

cdef public api class IS(Object) [type PyPetscIS_Type, object PyPetscISObject]:
    cdef PetscIS iset

cdef public api class LGMap(Object) [type PyPetscLGMap_Type, object PyPetscLGMapObject]:
    cdef PetscLGMap lgm

cdef public api class Vec(Object) [type PyPetscVec_Type, object PyPetscVecObject]:
    cdef PetscVec vec

cdef public api class Scatter(Object) [type PyPetscScatter_Type, object PyPetscScatterObject]:
    cdef PetscScatter sct

cdef public api class Mat(Object) [type PyPetscMat_Type, object PyPetscMatObject]:
    cdef PetscMat mat

cdef public api class NullSpace(Object) [type PyPetscNullSpace_Type, object PyPetscNullSpaceObject]:
    cdef PetscNullSpace nsp

cdef public api class PC(Object) [type PyPetscPC_Type, object PyPetscPCObject]:
    cdef PetscPC pc

cdef public api class KSP(Object) [type PyPetscKSP_Type, object PyPetscKSPObject]:
    cdef PetscKSP ksp

cdef public api class SNES(Object) [type PyPetscSNES_Type, object PyPetscSNESObject]:
    cdef PetscSNES snes

cdef public api class TS(Object) [type PyPetscTS_Type, object PyPetscTSObject]:
    cdef PetscTS ts

# --------------------------------------------------------------------
