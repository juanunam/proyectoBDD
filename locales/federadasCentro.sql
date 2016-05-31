
CREATE SCHEMA IF NOT EXISTS `ProyectoFinal` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ProyectoFinal` ;

DROP SERVER IF EXISTS centro;
CREATE SERVER centro
FOREIGN DATA WRAPPER mysql
OPTIONS (USER 'teamDatabase',PASSWORD 'contrasena', HOST '192.168.1.102', PORT 3306, DATABASE 'ProyectoFinal');

-- -----------------------------------------------------
-- Table `ProyectoFinal`.`NivelEducativo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`NivelEducativoCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`NivelEducativoCentro` (
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `NivelEducativo` VARCHAR(90) NULL COMMENT '',
  PRIMARY KEY (`idNivelEducativo`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/NivelEducativo';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`TipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TipoSostenimientoCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TipoSostenimientoCentro` (
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `TipoSostenimiento` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/TipoSostenimiento';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`EntidadFederativa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`EntidadFederativaCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`EntidadFederativaCentro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `EntidadFederativa` VARCHAR(90) NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/EntidadFederativa';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Edad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`EdadCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`EdadCentro` (
  `idEdad` INT NOT NULL COMMENT '',
  `RangoEdad` VARCHAR(90) NULL COMMENT '',
  PRIMARY KEY (`idEdad`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/Edad';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`EdadAlumnosTipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`EdadAlumnosTipoSostenimientoCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`EdadAlumnosTipoSostenimientoCentro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idEdad` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `Hombres` INT NULL COMMENT '',
  `Mujeres` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoSostenimiento`, `idEdad`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/EdadAlumnosTipoSostenimiento';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`TipoServicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TipoServicioCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TipoServicioCentro` (
  `idTipoServicio` INT NOT NULL COMMENT '',
  `TipoServicio` VARCHAR(90) NULL COMMENT '',
  PRIMARY KEY (`idTipoServicio`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/TipoServicio';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Turno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TurnoCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TurnoCentro` (
  `idTurno` INT NOT NULL COMMENT '',
  `Turno` VARCHAR(90) NULL COMMENT '',
  PRIMARY KEY (`idTurno`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/Turno';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`TipoInmueble`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TipoInmuebleCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TipoInmuebleCentro` (
  `idTipoInmueble` INT NOT NULL COMMENT '',
  `TipoInmueble` VARCHAR(100) NULL COMMENT '',
  PRIMARY KEY (`idTipoInmueble`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/TipoInmueble';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Inmuebles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`InmueblesCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`InmueblesCentro` (
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
 CONNECTION='centro/Inmuebles';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Techos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TechosCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TechosCentro` (
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
 CONNECTION='centro/Techos';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Paredes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`ParedesCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`ParedesCentro` (
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
 CONNECTION='centro/Paredes';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Pisos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`PisosCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`PisosCentro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idTipoInmueble` INT NOT NULL COMMENT '',
  `TierraMaterialesRemovibles` INT NULL DEFAULT 0 COMMENT '',
  `CementoFirme` INT NULL DEFAULT 0 COMMENT '',
  `MaderaMosaicoOtro` INT NULL DEFAULT 0 COMMENT '',
  `NoEspecificado` INT NULL DEFAULT 0 COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`, `idTipoInmueble`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/Pisos';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`RecursosInmuebles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`RecursosInmueblesCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`RecursosInmueblesCentro` (
  `idRecursosInmuebles` INT NOT NULL COMMENT '',
  `RecursosInmuebles` VARCHAR(90) NULL COMMENT '',
  PRIMARY KEY (`idRecursosInmuebles`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/RecursosInmuebles';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`DisponibilidadRecursosInmuebles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`DisponibilidadRecursosInmueblesCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`DisponibilidadRecursosInmueblesCentro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idRecursosInmuebles` INT NOT NULL COMMENT '',
  `Disponen` INT NULL COMMENT '',
  `NoDisponen` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  `NoAplica` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`, `idRecursosInmuebles`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/DisponibilidadRecursosInmuebles';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`ServicioAlumnosTipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`ServicioAlumnosTipoSostenimientoCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`ServicioAlumnosTipoSostenimientoCentro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `Hombres` INT NULL COMMENT '',
  `Mujeres` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoServicio`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/ServicioAlumnosTipoSostenimiento';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`TurnoAlumnosTipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TurnoAlumnosTipoSostenimientoCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TurnoAlumnosTipoSostenimientoCentro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTurno` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `Hombres` INT NULL COMMENT '',
  `Mujeres` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTurno`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/TurnoAlumnosTipoSostenimiento';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CondicionLaboral`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CondicionLaboralCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CondicionLaboralCentro` (
  `idCondicionLaboral` INT NOT NULL COMMENT '',
  `CondicionLaboral` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`idCondicionLaboral`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/CondicionLaboral';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CondicionPresencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CondicionPresenciaCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CondicionPresenciaCentro` (
  `idCondicionPresencia` INT NOT NULL COMMENT '',
  `CondicionPresencia` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`idCondicionPresencia`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/CondicionPresencia';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CondicionIdentificacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CondicionIdentificacionCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CondicionIdentificacionCentro` (
  `idCondicionIdentificacion` INT NOT NULL COMMENT '',
  `CondicionIdentificacion` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`idCondicionIdentificacion`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/CondicionIdentificacion';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal1Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal1Centro` (
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
 CONNECTION='centro/Personal1';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`TipoCentro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TipoCentroCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TipoCentroCentro` (
  `idTipoCentro` INT NOT NULL COMMENT '',
  `TipoCentro` VARCHAR(90) NULL COMMENT '',
  PRIMARY KEY (`idTipoCentro`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/TipoCentro';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal2Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal2Centro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoCentro` INT NOT NULL COMMENT '',
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
  PRIMARY KEY (`idEntidadFederativa`, `idTipoCentro`, `idNivelEducativo`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/Personal2';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal3Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal3Centro` (
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
 CONNECTION='centro/Personal3';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal4`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal4Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal4Centro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `Publico` INT NULL COMMENT '',
  `Privado` INT NULL COMMENT '',
  PRIMARY KEY (`idTipoServicio`, `idNivelEducativo`, `idEntidadFederativa`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/Personal4';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal5`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal5Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal5Centro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTurno` INT NOT NULL COMMENT '',
  `Publico` INT NULL COMMENT '',
  `Privado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTurno`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/Personal5';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`FuncionDocente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`FuncionDocenteCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`FuncionDocenteCentro` (
  `idFuncionDocente` INT NOT NULL COMMENT '',
  `FuncionDocente` VARCHAR(90) NOT NULL COMMENT '',
  PRIMARY KEY (`idFuncionDocente`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/FuncionDocente';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal6`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal6Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal6Centro` (
  `IdEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoCentro` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idFuncionDocente` INT NOT NULL COMMENT '',
  `TienePlaza` INT NULL COMMENT '',
  `NoTienePlaza` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`IdEntidadFederativa`, `idTipoCentro`, `idNivelEducativo`, `idFuncionDocente`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/Personal6';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal7`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal7Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal7Centro` (
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
 CONNECTION='centro/Personal7';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`EdadQuincenales`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`EdadQuincenalesCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`EdadQuincenalesCentro` (
  `idEdadQuincenales` INT NOT NULL COMMENT '',
  `EdadQuincenales` VARCHAR(90) NOT NULL COMMENT '',
  PRIMARY KEY (`idEdadQuincenales`)  COMMENT '',
  UNIQUE INDEX `EdadQuincenales_UNIQUE` (`EdadQuincenales` ASC)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/EdadQuincenales';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas3Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas3Centro` (
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
 CONNECTION='centro/Personas3';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas2Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas2Centro` (
  `IdEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoCentro` INT NOT NULL COMMENT '',
  `TotalPersonasDocentes` INT NULL COMMENT '',
  `Centro1` INT NULL COMMENT '',
  `Centro2` INT NULL COMMENT '',
  `Centro3` INT NULL COMMENT '',
  `Centro4M` INT NULL COMMENT '',
  `PromedioPlazaCentroTrabajo` FLOAT NULL COMMENT '',
  PRIMARY KEY (`IdEntidadFederativa`, `idTipoCentro`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/Personas2';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas4`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas4Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas4Centro` (
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
 CONNECTION='centro/Personas4';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo1Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo1Centro` (
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
 CONNECTION='centro/CentrosTrabajo1';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`EscuelasEntidadFederativa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`EscuelasEntidadFederativaCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`EscuelasEntidadFederativaCentro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `Publico` INT NULL COMMENT '',
  `Privado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/EscuelasEntidadFederativa';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo7`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo7Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo7Centro` (
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
 CONNECTION='centro/CentrosTrabajo7';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`RecursoEscuela`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`RecursoEscuelaCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`RecursoEscuelaCentro` (
  `idRecursoEscuela` INT NOT NULL COMMENT '',
  `RecursoEscuela` VARCHAR(90) NULL COMMENT '',
  PRIMARY KEY (`idRecursoEscuela`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/RecursoEscuela';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`DisponibilidadRecursosEscuelaServicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaServicioCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaServicioCentro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `idRecursoEscuela` INT NOT NULL COMMENT '',
  `Disponen` INT NULL COMMENT '',
  `NoDisponen` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoServicio`, `idRecursoEscuela`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/DisponibilidadRecursosEscuelaServicio';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo6`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo6Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo6Centro` (
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
 CONNECTION='centro/CentrosTrabajo6';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo8`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo8Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo8Centro` (
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
 CONNECTION='centro/CentrosTrabajo8';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`DisponibilidadRecursosEscuelaNivelEducativo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaNivelEducativoCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaNivelEducativoCentro` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idRecursoEscuela` INT NOT NULL COMMENT '',
  `Disponen` INT NULL COMMENT '',
  `NoDisponen` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idRecursoEscuela`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='centro/DisponibilidadRecursosEscuelaNivelEducativo';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Alumnos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`AlumnosCentro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`AlumnosCentro` (
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
 CONNECTION='centro/Alumnos';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas1Centro` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas1Centro` (
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
 CONNECTION='centro/Personas1';

