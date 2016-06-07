
CREATE SCHEMA IF NOT EXISTS `ProyectoFinal` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ProyectoFinal` ;

DROP SERVER IF EXISTS norte;
CREATE SERVER norte
FOREIGN DATA WRAPPER mysql
OPTIONS (USER 'teamDatabase',PASSWORD 'contrasena', HOST '192.168.1.101', PORT 3306, DATABASE 'ProyectoFinal');

-- -----------------------------------------------------
-- Table `ProyectoFinal`.`EdadAlumnosTipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`EdadAlumnosTipoSostenimientoNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`EdadAlumnosTipoSostenimientoNorte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idEdad` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `Hombres` INT NULL COMMENT '',
  `Mujeres` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoSostenimiento`, `idEdad`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/EdadAlumnosTipoSostenimiento';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Inmuebles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`InmueblesNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`InmueblesNorte` (
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
 CONNECTION='norte/Inmuebles';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Techos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TechosNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TechosNorte` (
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
 CONNECTION='norte/Techos';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Paredes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`ParedesNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`ParedesNorte` (
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
 CONNECTION='norte/Paredes';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Pisos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`PisosNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`PisosNorte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idTipoInmueble` INT NOT NULL COMMENT '',
  `TierraMaterialesRemovibles` INT NULL DEFAULT 0 COMMENT '',
  `CementoFirme` INT NULL DEFAULT 0 COMMENT '',
  `MaderaMosaicoOtro` INT NULL DEFAULT 0 COMMENT '',
  `NoEspecificado` INT NULL DEFAULT 0 COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`, `idTipoInmueble`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/Pisos';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`DisponibilidadRecursosInmuebles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`DisponibilidadRecursosInmueblesNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`DisponibilidadRecursosInmueblesNorte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idRecursosInmuebles` INT NOT NULL COMMENT '',
  `Disponen` INT NULL COMMENT '',
  `NoDisponen` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  `NoAplica` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idTipoSostenimiento`, `idRecursosInmuebles`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/DisponibilidadRecursosInmuebles';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`ServicioAlumnosTipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`ServicioAlumnosTipoSostenimientoNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`ServicioAlumnosTipoSostenimientoNorte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `Hombres` INT NULL COMMENT '',
  `Mujeres` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoServicio`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/ServicioAlumnosTipoSostenimiento';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`TurnoAlumnosTipoSostenimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`TurnoAlumnosTipoSostenimientoNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`TurnoAlumnosTipoSostenimientoNorte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTurno` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `Hombres` INT NULL COMMENT '',
  `Mujeres` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTurno`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/TurnoAlumnosTipoSostenimiento';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal1Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal1Norte` (
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
 CONNECTION='norte/Personal1';




-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal2Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal2Norte` (
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
 CONNECTION='norte/Personal2';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal3Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal3Norte` (
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
 CONNECTION='norte/Personal3';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal4`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal4Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal4Norte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `Publico` INT NULL COMMENT '',
  `Privado` INT NULL COMMENT '',
  PRIMARY KEY (`idTipoServicio`, `idNivelEducativo`, `idEntidadFederativa`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/Personal4';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal5`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal5Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal5Norte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTurno` INT NOT NULL COMMENT '',
  `Publico` INT NULL COMMENT '',
  `Privado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTurno`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/Personal5';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal6`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal6Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal6Norte` (
  `IdEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoCentro` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idFuncionDocente` INT NOT NULL COMMENT '',
  `TienePlaza` INT NULL COMMENT '',
  `NoTienePlaza` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`IdEntidadFederativa`, `idTipoCentro`, `idNivelEducativo`, `idFuncionDocente`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/Personal6';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personal7`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personal7Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personal7Norte` (
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
 CONNECTION='norte/Personal7';



-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas3Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas3Norte` (
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
 CONNECTION='norte/Personas3';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas2Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas2Norte` (
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
 CONNECTION='norte/Personas2';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas4`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas4Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas4Norte` (
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
 CONNECTION='norte/Personas4';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo1Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo1Norte` (
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
 CONNECTION='norte/CentrosTrabajo1';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`EscuelasEntidadFederativa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`EscuelasEntidadFederativaNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`EscuelasEntidadFederativaNorte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `Publico` INT NULL COMMENT '',
  `Privado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/EscuelasEntidadFederativa';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo7`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo7Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo7Norte` (
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
 CONNECTION='norte/CentrosTrabajo7';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`DisponibilidadRecursosEscuelaServicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaServicioNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaServicioNorte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idTipoServicio` INT NOT NULL COMMENT '',
  `idRecursoEscuela` INT NOT NULL COMMENT '',
  `Disponen` INT NULL COMMENT '',
  `NoDisponen` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idTipoServicio`, `idRecursoEscuela`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/DisponibilidadRecursosEscuelaServicio';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo6`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo6Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo6Norte` (
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
 CONNECTION='norte/CentrosTrabajo6';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`CentrosTrabajo8`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`CentrosTrabajo8Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`CentrosTrabajo8Norte` (
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
 CONNECTION='norte/CentrosTrabajo8';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`DisponibilidadRecursosEscuelaNivelEducativo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaNivelEducativoNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`DisponibilidadRecursosEscuelaNivelEducativoNorte` (
  `idEntidadFederativa` INT NOT NULL COMMENT '',
  `idTipoSostenimiento` INT NOT NULL COMMENT '',
  `idNivelEducativo` INT NOT NULL COMMENT '',
  `idRecursoEscuela` INT NOT NULL COMMENT '',
  `Disponen` INT NULL COMMENT '',
  `NoDisponen` INT NULL COMMENT '',
  `NoEspecificado` INT NULL COMMENT '',
  PRIMARY KEY (`idEntidadFederativa`, `idNivelEducativo`, `idRecursoEscuela`, `idTipoSostenimiento`)  COMMENT '')
 ENGINE = FEDERATED
 CONNECTION='norte/DisponibilidadRecursosEscuelaNivelEducativo';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Alumnos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`AlumnosNorte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`AlumnosNorte` (
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
 CONNECTION='norte/Alumnos';


-- -----------------------------------------------------
-- Table `ProyectoFinal`.`Personas1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoFinal`.`Personas1Norte` ;

CREATE TABLE IF NOT EXISTS `ProyectoFinal`.`Personas1Norte` (
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
 CONNECTION='norte/Personas1';

