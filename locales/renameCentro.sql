START TRANSACTION;
USE `ProyectoFinal`;


RENAME TABLE `Alumnos` TO `AlumnosCentro`;
RENAME TABLE `CentrosTrabajo1` TO `CentrosTrabajo1Centro`;
RENAME TABLE `CentrosTrabajo6` TO `CentrosTrabajo6Centro`;
RENAME TABLE `CentrosTrabajo7` TO `CentrosTrabajo7Centro`;
RENAME TABLE `CentrosTrabajo8` TO `CentrosTrabajo8Centro`;
RENAME TABLE `DisponibilidadRecursosEscuelaNivelEducativo` TO `DisponibilidadRecursosEscuelaNivelEducativoCentro`;
RENAME TABLE `DisponibilidadRecursosEscuelaServicio` TO `DisponibilidadRecursosEscuelaServicioCentro`;
RENAME TABLE `DisponibilidadRecursosInmuebles` TO `DisponibilidadRecursosInmueblesCentro`;
RENAME TABLE `EdadAlumnosTipoSostenimiento` TO `EdadAlumnosTipoSostenimientoCentro`;
RENAME TABLE `EscuelasEntidadFederativa` TO `EscuelasEntidadFederativaCentro`;
RENAME TABLE `Inmuebles` TO `InmueblesCentro`;
RENAME TABLE `Paredes` TO `ParedesCentro`;
RENAME TABLE `Personal1` TO `Personal1Centro`;
RENAME TABLE `Personal2` TO `Personal2Centro`;
RENAME TABLE `Personal3` TO `Personal3Centro`;
RENAME TABLE `Personal4` TO `Personal4Centro`;
RENAME TABLE `Personal5` TO `Personal5Centro`;
RENAME TABLE `Personal6` TO `Personal6Centro`;
RENAME TABLE `Personal7` TO `Personal7Centro`;
RENAME TABLE `Personas1` TO `Personas1Centro`;
RENAME TABLE `Personas2` TO `Personas2Centro`;
RENAME TABLE `Personas3` TO `Personas3Centro`;
RENAME TABLE `Personas4` TO `Personas4Centro`;
RENAME TABLE `Pisos` TO `PisosCentro`;
RENAME TABLE `ServicioAlumnosTipoSostenimiento` TO `ServicioAlumnosTipoSostenimientoCentro`;
RENAME TABLE `Techos` TO `TechosCentro`;
RENAME TABLE `TurnoAlumnosTipoSostenimiento` TO `TurnoAlumnosTipoSostenimientoCentro`;


COMMIT;