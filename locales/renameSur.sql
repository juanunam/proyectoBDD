START TRANSACTION;
USE `ProyectoFinal`;


RENAME TABLE `Alumnos` TO `AlumnosSur`;
RENAME TABLE `CentrosTrabajo1` TO `CentrosTrabajo1Sur`;
RENAME TABLE `CentrosTrabajo6` TO `CentrosTrabajo6Sur`;
RENAME TABLE `CentrosTrabajo7` TO `CentrosTrabajo7Sur`;
RENAME TABLE `CentrosTrabajo8` TO `CentrosTrabajo8Sur`;
RENAME TABLE `DisponibilidadRecursosEscuelaNivelEducativo` TO `DisponibilidadRecursosEscuelaNivelEducativoSur`;
RENAME TABLE `DisponibilidadRecursosEscuelaServicio` TO `DisponibilidadRecursosEscuelaServicioSur`;
RENAME TABLE `DisponibilidadRecursosInmuebles` TO `DisponibilidadRecursosInmueblesSur`;
RENAME TABLE `EdadAlumnosTipoSostenimiento` TO `EdadAlumnosTipoSostenimientoSur`;
RENAME TABLE `EscuelasEntidadFederativa` TO `EscuelasEntidadFederativaSur`;
RENAME TABLE `Inmuebles` TO `InmueblesSur`;
RENAME TABLE `Paredes` TO `ParedesSur`;
RENAME TABLE `Personal1` TO `Personal1Sur`;
RENAME TABLE `Personal2` TO `Personal2Sur`;
RENAME TABLE `Personal3` TO `Personal3Sur`;
RENAME TABLE `Personal4` TO `Personal4Sur`;
RENAME TABLE `Personal5` TO `Personal5Sur`;
RENAME TABLE `Personal6` TO `Personal6Sur`;
RENAME TABLE `Personal7` TO `Personal7Sur`;
RENAME TABLE `Personas1` TO `Personas1Sur`;
RENAME TABLE `Personas2` TO `Personas2Sur`;
RENAME TABLE `Personas3` TO `Personas3Sur`;
RENAME TABLE `Personas4` TO `Personas4Sur`;
RENAME TABLE `Pisos` TO `PisosSur`;
RENAME TABLE `ServicioAlumnosTipoSostenimiento` TO `ServicioAlumnosTipoSostenimientoSur`;
RENAME TABLE `Techos` TO `TechosSur`;
RENAME TABLE `TurnoAlumnosTipoSostenimiento` TO `TurnoAlumnosTipoSostenimientoSur`;


COMMIT;