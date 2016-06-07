
CREATE SCHEMA IF NOT EXISTS `ProyectoFinal` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ProyectoFinal` ;

DROP SERVER IF EXISTS sur;
CREATE SERVER sur
FOREIGN DATA WRAPPER mysql
OPTIONS (USER 'teamDatabase',PASSWORD 'contrasena', HOST '192.168.1.103', PORT 3306, DATABASE 'ProyectoFinal');


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`EdadAlumnosTipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`EdadAlumnosTipoSostenimientoSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`EdadAlumnosTipoSostenimientoSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idEdad` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `Hombres` INT NULL COMMENT '',
  `Mujeres` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoSostenimiento`, `idEdad`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/EdadAlumnosTipoSostenimientoSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Inmuebles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`InmueblesSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`InmueblesSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `TotalNumeroInmueblesEscuela` INT NULL COMMENT '',
  `HechaParaFinesEducativos` INT NULL DEFAULT 0 COMMENT '',
  `AdaptadaFinesEducativos` INT NULL DEFAULT 0 COMMENT '',
  `MaterialesLigerosPrecarios` INT NULL DEFAULT 0 COMMENT '',
  `EscuelaMovil` INT NULL COMMENT '',
  `EscuelaSinConstruccion` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  `Escuela1` INT NULL COMMENT '',
  `Escuela2` INT NULL COMMENT '',
  `Escuela3` INT NULL COMMENT '',
  `Escuela4M` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/InmueblesSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Techos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TechosSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TechosSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idTipoInmueble` INT NOT NULL COMMENT '',
  `Desecho` INT NULL DEFAULT 0 COMMENT '',
  `Lamina` INT NULL DEFAULT 0 COMMENT '',
  `Madera` INT NULL DEFAULT 0 COMMENT '',
  `Terrado` INT NULL DEFAULT 0 COMMENT '',
  `Teja` INT NULL DEFAULT 0 COMMENT '',
  `Concreto` INT NULL DEFAULT 0 COMMENT '',
  `NoEspecificado` INT NULL DEFAULT 0 COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`, `idTipoInmueble`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/TechosSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Paredes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`ParedesSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`ParedesSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idTipoInmueble` INT NOT NULL COMMENT '',
  `Desecho` INT NULL DEFAULT 0 COMMENT '',
  `Lamina` INT NULL COMMENT '',
  `Embarro` INT NULL COMMENT '',
  `Madera` INT NULL COMMENT '',
  `Adobe` INT NULL COMMENT '',
  `Tabique` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`, `idTipoInmueble`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/ParedesSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Pisos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`PisosSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`PisosSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idTipoInmueble` INT NOT NULL COMMENT '',
  `TierraMaterialesRemovibles` INT NULL DEFAULT 0 COMMENT '',
  `CementoFirme` INT NULL DEFAULT 0 COMMENT '',
  `MaderaMosaicoOtro` INT NULL DEFAULT 0 COMMENT '',
  `NoEspecificado` INT NULL DEFAULT 0 COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`, `idTipoInmueble`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/PisosSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`DisponibilidadRecursosInmuebles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`DisponibilidadRecursosInmueblesSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`DisponibilidadRecursosInmueblesSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idRecursosInmuebles` INT NOT NULL COMMENT '',
  `Disponen` INT NULL COMMENT '',
  `NoDisponen` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  `NoAplica` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`, `idRecursosInmuebles`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/DisponibilidadRecursosInmueblesSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`ServicioAlumnosTipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`ServicioAlumnosTipoSostenimientoSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`ServicioAlumnosTipoSostenimientoSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `Hombres` INT NULL COMMENT '',
  `Mujeres` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoServicio`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/ServicioAlumnosTipoSostenimientoSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`TurnoAlumnosTipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TurnoAlumnosTipoSostenimientoSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TurnoAlumnosTipoSostenimientoSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTurno` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `Hombres` INT NULL COMMENT '',
  `Mujeres` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTurno`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/TurnoAlumnosTipoSostenimientoSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal1Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal1Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idCondicionLaboral` INT NOT NULL COMMENT '',
  `idCondicionPresencia` INT NOT NULL COMMENT '',
  `idCondicionIdentificacion` INT NOT NULL COMMENT '',
  `TotalPersonal` INT NULL COMMENT '',
  `DirectorEscuela` INT NULL COMMENT '',
  `DirectorGrupo` INT NULL COMMENT '',
  `MaestroGrupo` INT NULL COMMENT '',
  `InstructorComunitario` INT NULL COMMENT '',
  `DocenteApoyo` INT NULL COMMENT '',
  `DirectivoServicio` INT NULL COMMENT '',
  `PrefectoApoyo` INT NULL COMMENT '',
  `ConserjeIntendente` INT NULL COMMENT '',
  `AdministrativaEscuelas` INT NULL COMMENT '',
  `SupervisorZona` INT NULL COMMENT '',
  `AdministrativaCentros` INT NULL COMMENT '',
  `Otra` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idCondicionLaboral`, `idCondicionPresencia`, `idCondicionIdentificacion`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personal1Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal2Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal2Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSur` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `TotalPersonal` INT NULL COMMENT '',
  `DirectorEscuela` INT NULL COMMENT '',
  `DirectorGrupo` INT NULL COMMENT '',
  `MaestroGrupo` INT NULL COMMENT '',
  `InstructorComunitario` INT NULL COMMENT '',
  `DocenteApoyo` INT NULL COMMENT '',
  `DirectivoServicio` INT NULL COMMENT '',
  `PrefectoApoyo` INT NULL COMMENT '',
  `ConserjeIntendente` INT NULL COMMENT '',
  `AdministrativaEscuelas` INT NULL COMMENT '',
  `SupervisorZona` INT NULL COMMENT '',
  `AdministrativaCentros` INT NULL COMMENT '',
  `Otra` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSur`, `idNivelEducativo`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personal2Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal3Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal3Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL DEFAULT 0 COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `TotalPersonal` INT NULL COMMENT '',
  `DirectorEscuela` INT NULL COMMENT '',
  `DirectorGrupo` INT NULL COMMENT '',
  `MaestroGrupo` INT NULL COMMENT '',
  `InstructorComunitario` INT NULL COMMENT '',
  `DocenteApoyo` INT NULL COMMENT '',
  `DirectivoServicio` INT NULL COMMENT '',
  `PrefectoApoyo` INT NULL COMMENT '',
  `ConserjeIntendente` INT NULL COMMENT '',
  `Administrativa` INT NULL COMMENT '',
  `Otra` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personal3Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal4`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal4Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal4Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `Publico` INT NULL COMMENT '',
  `Privado` INT NULL COMMENT '',
  PRIMARY KEY (`idTipoServicio`, `idNivelEducativo`, `idEntidadFederativa`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personal4Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal5`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal5Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal5Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTurno` INT NOT NULL COMMENT '',
  `Publico` INT NULL COMMENT '',
  `Privado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTurno`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personal5Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal6`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal6Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal6Sur` (
  `IdEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSur` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idFuncionDocente` INT NOT NULL COMMENT '',
  `TienePlaza` INT NULL COMMENT '',
  `NoTienePlaza` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`IdEntidadFederativa`, `idTipoSur`, `idNivelEducativo`, `idFuncionDocente`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personal6Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal7`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal7Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal7Sur` (
  `IdEntidadFederativa` INT NOT NULL COMMENT '',
  `idFuncionDocente` INT NOT NULL COMMENT '',
  `TienenPlaza` INT NULL COMMENT '',
  `Plaza1` INT NULL COMMENT '',
  `Plaza2` INT NULL COMMENT '',
  `Plaza3` INT NULL COMMENT '',
  `Plaza4M` INT NULL COMMENT '',
  `NoEspecificadoNumero` INT NULL COMMENT '',
  `NoTienenPlaza` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  `PromedioPlazaCentroTrabajo` FLOAT NULL COMMENT '',
  PRIMARY KEY (`IdEntidadFederativa`, `idFuncionDocente`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personal7Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas3Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas3Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `Sexo` CHAR(1) NOT NULL COMMENT '',
  `idEdadQuincenales` INT NOT NULL COMMENT '',
  `TotalCONAFE` INT NULL COMMENT '',
  `InstructorComunitario` INT NULL COMMENT '',
  `CapacitadorTutor` INT NULL COMMENT '',
  `AsistenteEducativo` INT NULL COMMENT '',
  `Otra` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `Sexo`, `idEdadQuincenales`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personas3Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas2Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas2Sur` (
  `IdEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSur` INT NOT NULL COMMENT '',
  `TotalPersonasDocentes` INT NULL COMMENT '',
  `Centro1` INT NULL COMMENT '',
  `Centro2` INT NULL COMMENT '',
  `Centro3` INT NULL COMMENT '',
  `Centro4M` INT NULL COMMENT '',
  `PromedioPlazaCentroTrabajo` FLOAT NULL COMMENT '',
  PRIMARY KEY (`IdEntidadFederativa`, `idTipoSur`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personas2Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas4`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas4Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas4Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `TotalCONAFE` INT NULL COMMENT '',
  `InstructorComunitario` INT NULL COMMENT '',
  `CapacitadorTutor` INT NULL COMMENT '',
  `AsistenteEducativo` INT NULL COMMENT '',
  `Otra` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personas4Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo1Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo1Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `CentrosTrabajoOperacion` INT NULL COMMENT '',
  `Censados` INT NULL COMMENT '',
  `NoCensados` INT NULL COMMENT '',
  `ContingenciaOperativa` INT NULL COMMENT '',
  `Negativas` INT NULL COMMENT '',
  `NoLocalizado` INT NULL COMMENT '',
  `Basica` INT NULL COMMENT '',
  `CentroAtencionMultiple` INT NULL COMMENT '',
  `ApoyoEduacionEspecial` INT NULL COMMENT '',
  `AdministrativosApoyoEducacionBasica` INT NULL COMMENT '',
  `Escuelas` INT NULL COMMENT '',
  `Preescolar` INT NULL COMMENT '',
  `Primaria` INT NULL COMMENT '',
  `Secundaria` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/CentrosTrabajo1Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`EscuelasEntidadFederativa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`EscuelasEntidadFederativaSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`EscuelasEntidadFederativaSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `Publico` INT NULL COMMENT '',
  `Privado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/EscuelasEntidadFederativaSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo7`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo7Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo7Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `Escuelas` INT NULL COMMENT '',
  `HechaParaFinesEducativos` INT NULL DEFAULT 0 COMMENT '',
  `AdaptadaFinesEducativos` INT NULL DEFAULT 0 COMMENT '',
  `MaterialesLigerosPrecarios` INT NULL DEFAULT 0 COMMENT '',
  `EscuelaMovil` INT NULL COMMENT '',
  `EscuelaSinConstruccion` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  `ConConstruccion` INT NULL COMMENT '',
  `ElectricaServicioPublico` INT NULL COMMENT '',
  `ElectricaCeldasSolares` INT NULL COMMENT '',
  `ElectricaLuzPropia` INT NULL COMMENT '',
  `ElectricaOtra` INT NULL COMMENT '',
  `ElectricaNoDisponen` INT NULL COMMENT '',
  `ElectricaNoEspecificado` INT NULL COMMENT '',
  `AguaRedPublica` INT NULL COMMENT '',
  `AguaPipa` INT NULL COMMENT '',
  `AguaPozoNoria` INT NULL COMMENT '',
  `AguaAcarrean` INT NULL COMMENT '',
  `AguaOtra` INT NULL COMMENT '',
  `AguaNoDisponen` INT NULL COMMENT '',
  `AguaNoEspecificado` INT NULL COMMENT '',
  `ConAulasClase` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoServicio`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/CentrosTrabajo7Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`DisponibilidadRecursosEscuelaServicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaServicioSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaServicioSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `idRecursoEscuela` INT NOT NULL COMMENT '',
  `Disponen` INT NULL COMMENT '',
  `NoDisponen` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoServicio`, `idRecursoEscuela`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/DisponibilidadRecursosEscuelaServicioSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo6`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo6Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo6Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idTurno` INT NOT NULL COMMENT '',
  `Escuelas` INT NULL COMMENT '',
  `Preescolar` INT NULL COMMENT '',
  `Primaria` INT NULL COMMENT '',
  `Secundaria` INT NULL COMMENT '',
  `CentroAtencionMultiple` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`, `idTurno`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/CentrosTrabajo6Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo8`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo8Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo8Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `ConConstruccion` INT NULL COMMENT '',
  `ElectricaServicioPublico` INT NULL COMMENT '',
  `ElectricaCeldasSolares` INT NULL COMMENT '',
  `ElectricaLuzPropia` INT NULL COMMENT '',
  `ElectricaOtra` INT NULL COMMENT '',
  `ElectricaNoDisponen` INT NULL COMMENT '',
  `ElectricaNoEspecificado` INT NULL COMMENT '',
  `AguaRedPublica` INT NULL COMMENT '',
  `AguaPipa` INT NULL COMMENT '',
  `AguaPozoNoria` INT NULL COMMENT '',
  `AguaAcarrean` INT NULL COMMENT '',
  `AguaOtra` INT NULL COMMENT '',
  `AguaNoDisponen` INT NULL COMMENT '',
  `AguaNoEspecificado` INT NULL COMMENT '',
  `Escuelas` INT NULL COMMENT '',
  PRIMARY KEY (`idTipoSostenimiento`, `idNivelEducativo`, `idEntidadFederativa`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/CentrosTrabajo8Sur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`DisponibilidadRecursosEscuelaNivelEducativo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaNivelEducativoSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaNivelEducativoSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idRecursoEscuela` INT NOT NULL COMMENT '',
  `Disponen` INT NULL COMMENT '',
  `NoDisponen` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idRecursoEscuela`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/DisponibilidadRecursosEscuelaNivelEducativoSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Alumnos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`AlumnosSur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`AlumnosSur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `TotalAlumnos` INT NULL COMMENT '',
  `Total` INT NULL COMMENT '',
  `HechaParaFinesEducativos` INT NULL DEFAULT 0 COMMENT '',
  `AdaptadaFinesEducativos` INT NULL DEFAULT 0 COMMENT '',
  `MaterialesLigerosPrecarios` INT NULL DEFAULT 0 COMMENT '',
  `EscuelaMovil` INT NULL COMMENT '',
  `EscuelaSinConstruccion` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoServicio`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/AlumnosSur';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas1Sur` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas1Sur` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `Sexo` CHAR(1) NOT NULL COMMENT '',
  `idEdadQuincenales` INT NOT NULL COMMENT '',
  `TotalPersonasDocentes` INT NULL COMMENT '',
  `DirectorEscuela` INT NULL COMMENT '',
  `DirectorGrupo` INT NULL COMMENT '',
  `MaestroGrupo` INT NULL COMMENT '',
  `DocenteApoyo` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `Sexo`, `idEdadQuincenales`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='sur/Personas1Sur';

