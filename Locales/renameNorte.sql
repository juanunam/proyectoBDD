START TRANSACTION;
USE `ProyectoFinal`;


RENAME TABLE `Alumnos` TO `AlumnosNorte`;
RENAME TABLE `CentrosTrabajo1` TO `CentrosTrabajo1Norte`;
RENAME TABLE `CentrosTrabajo6` TO `CentrosTrabajo6Norte`;
RENAME TABLE `CentrosTrabajo7` TO `CentrosTrabajo7Norte`;
RENAME TABLE `CentrosTrabajo8` TO `CentrosTrabajo8Norte`;
RENAME TABLE `DisponibilidadRecursosEscuelaNivelEducativo` TO `DisponibilidadRecursosEscuelaNivelEducativoNorte`;
RENAME TABLE `DisponibilidadRecursosEscuelaServicio` TO `DisponibilidadRecursosEscuelaServicioNorte`;
RENAME TABLE `DisponibilidadRecursosInmuebles` TO `DisponibilidadRecursosInmueblesNorte`;
RENAME TABLE `EdadAlumnosTipoSostenimiento` TO `EdadAlumnosTipoSostenimientoNorte`;
RENAME TABLE `EscuelasEntidadFederativa` TO `EscuelasEntidadFederativaNorte`;
RENAME TABLE `Inmuebles` TO `InmueblesNorte`;
RENAME TABLE `Paredes` TO `ParedesNorte`;
RENAME TABLE `Personal1` TO `Personal1Norte`;
RENAME TABLE `Personal2` TO `Personal2Norte`;
RENAME TABLE `Personal3` TO `Personal3Norte`;
RENAME TABLE `Personal4` TO `Personal4Norte`;
RENAME TABLE `Personal5` TO `Personal5Norte`;
RENAME TABLE `Personal6` TO `Personal6Norte`;
RENAME TABLE `Personal7` TO `Personal7Norte`;
RENAME TABLE `Personas1` TO `Personas1Norte`;
RENAME TABLE `Personas2` TO `Personas2Norte`;
RENAME TABLE `Personas3` TO `Personas3Norte`;
RENAME TABLE `Personas4` TO `Personas4Norte`;
RENAME TABLE `Pisos` TO `PisosNorte`;
RENAME TABLE `ServicioAlumnosTipoSostenimiento` TO `ServicioAlumnosTipoSostenimientoNorte`;
RENAME TABLE `Techos` TO `TechosNorte`;
RENAME TABLE `TurnoAlumnosTipoSostenimiento` TO `TurnoAlumnosTipoSostenimientoNorte`;


COMMIT;