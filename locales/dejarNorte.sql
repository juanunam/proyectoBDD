START TRANSACTION;
USE `ProyectoFinal`;
/*

28
"Tamaulipas"
26
"Sonora"
25
"Sinaloa"
19
"Nuevo León"
10
"Durango"
8
"Chihuahua"
5
"Coahuila de Zaragoza"
3
"Baja California Sur"
2
"Baja California"
1
"Aguascalientes"



*/


DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=1;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=1;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=1;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=1;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=1;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=1;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=1;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=1;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=1;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=1;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=1;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=1;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=1;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=1;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=1;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=1;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=1;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=1;

DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=2;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=2;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=2;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=2;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=2;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=2;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=2;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=2;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=2;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=2;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=2;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=2;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=2;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=2;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=2;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=2;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=2;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=2;

DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=3;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=3;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=3;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=3;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=3;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=3;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=3;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=3;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=3;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=3;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=3;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=3;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=3;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=3;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=3;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=3;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=3;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=3;

DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=5;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=5;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=5;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=5;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=5;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=5;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=5;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=5;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=5;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=5;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=5;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=5;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=5;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=5;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=5;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=5;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=5;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=5;

DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=8;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=8;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=8;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=8;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=8;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=8;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=8;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=8;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=8;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=8;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=8;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=8;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=8;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=8;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=8;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=8;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=8;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=8;

DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=10;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=10;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=10;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=10;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=10;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=10;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=10;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=10;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=10;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=10;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=10;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=10;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=10;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=10;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=10;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=10;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=10;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=10;

DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=28;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=28;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=28;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=28;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=28;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=28;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=28;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=28;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=28;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=28;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=28;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=28;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=28;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=28;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=28;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=28;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=28;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=28;


DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=26;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=26;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=26;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=26;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=26;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=26;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=26;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=26;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=26;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=26;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=26;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=26;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=26;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=26;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=26;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=26;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=26;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=26;


DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=25;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=25;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=25;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=25;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=25;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=25;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=25;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=25;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=25;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=25;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=25;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=25;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=25;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=25;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=25;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=25;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=25;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=25;


DELETE FROM Alumnos                   WHERE idEntidadFederatiVA=19;
DELETE FROM CentrosTrabajo1              WHERE idEntidadFederatiVA=19;
DELETE FROM CentrosTrabajo6               WHERE idEntidadFederatiVA=19;
DELETE FROM CentrosTrabajo7               WHERE idEntidadFederatiVA=19;
DELETE FROM CentrosTrabajo8               WHERE idEntidadFederatiVA=19;
DELETE FROM DisponibilidadRecursosEscuelaNivelEducativo WHERE idEntidadFederatiVA=19;
DELETE FROM DisponibilidadRecursosEscuelaServicio    WHERE idEntidadFederatiVA=19;
DELETE FROM DisponibilidadRecursosInmuebles       WHERE idEntidadFederatiVA=19;
DELETE FROM EdadAlumnosTipoSostenimiento        WHERE idEntidadFederatiVA=19;
DELETE FROM EscuelasEntidadFederativa          WHERE idEntidadFederatiVA=19;
DELETE FROM Inmuebles                  WHERE idEntidadFederatiVA=19;
DELETE FROM Paredes                   WHERE idEntidadFederatiVA=19;
DELETE FROM Personal1                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personal2                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personal3                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personal4                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personal5                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personal6                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personal7                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personas1                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personas2                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personas3                  WHERE idEntidadFederatiVA=19;
DELETE FROM Personas4                  WHERE idEntidadFederatiVA=19;
DELETE FROM Pisos                    WHERE idEntidadFederatiVA=19;
DELETE FROM ServicioAlumnosTipoSostenimiento      WHERE idEntidadFederatiVA=19;
DELETE FROM Techos                   WHERE idEntidadFederatiVA=19;
DELETE FROM TurnoAlumnosTipoSostenimiento WHERE idEntidadFederatiVA=19;
COMMIT;