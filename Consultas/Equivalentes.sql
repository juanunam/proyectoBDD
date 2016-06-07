
/**Equivalentes*/

/* Consulta 1 */
select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimientoNorte,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimientoNorte.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and EdadAlumnosTipoSostenimientoNorte.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimientoNorte.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimientoNorte.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento ;

/* Consulta 2 */
select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimientoCentro,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimientoCentro.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and EdadAlumnosTipoSostenimientoCentro.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimientoCentro.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimientoCentro.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento ;

/* Consulta 3 */
select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimientoSur,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimientoSur.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and EdadAlumnosTipoSostenimientoSur.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimientoSur.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimientoSur.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento ;


/* Consulta 4 */
select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimientoNorte,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimientoNorte.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and EdadAlumnosTipoSostenimientoNorte.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimientoNorte.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimientoNorte.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento UNION

 select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimientoCentro,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimientoCentro.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and EdadAlumnosTipoSostenimientoCentro.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimientoCentro.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimientoCentro.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento UNION

 select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimientoSur,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimientoSur.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and EdadAlumnosTipoSostenimientoSur.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimientoSur.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimientoSur.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
;

/* Consulta 5*/

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1Norte,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1Norte.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1Norte.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1Norte.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1Norte.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
 group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion;

/* Consulta 6*/

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1Centro,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1Centro.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1Centro.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1Centro.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1Centro.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
 group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion;

/* Consulta 7*/

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1Sur,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1Sur.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1Sur.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1Sur.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1Sur.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
 group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion;

/* Consulta 10*/

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1Norte,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1Norte.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1Norte.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1Norte.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1Norte.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
 group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion

UNION

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1Centro,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1Centro.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1Centro.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1Centro.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1Centro.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
 group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion

UNION

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1Sur,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1Sur.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1Sur.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1Sur.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1Sur.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
 group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion;

  /* Consulta 9 */

select EntidadFederativa,CentrosTrabajoOperacion,Censados,NoCensados,
ContingenciaOperativa,Negativas,NoLocalizado,Basica,CentroAtencionMultiple,
ApoyoEduacionEspecial,AdministrativosApoyoEducacionBasica,Escuelas,Preescolar,
Primaria,Secundaria
from CentrosTrabajo1Sur,EntidadFederativa
where EntidadFederativa.idEntidadFederativa = CentrosTrabajo1Sur.idEntidadFederativa
;


 /* Consulta 10 */


select EntidadFederativa,CentrosTrabajoOperacion,Censados,NoCensados,
ContingenciaOperativa,Negativas,NoLocalizado,Basica,CentroAtencionMultiple,
ApoyoEduacionEspecial,AdministrativosApoyoEducacionBasica,Escuelas,Preescolar,
Primaria,Secundaria
from CentrosTrabajo1Norte,EntidadFederativa
where EntidadFederativa.idEntidadFederativa = CentrosTrabajo1Norte.idEntidadFederativa
UNION

select EntidadFederativa,CentrosTrabajoOperacion,Censados,NoCensados,
ContingenciaOperativa,Negativas,NoLocalizado,Basica,CentroAtencionMultiple,
ApoyoEduacionEspecial,AdministrativosApoyoEducacionBasica,Escuelas,Preescolar,
Primaria,Secundaria
from CentrosTrabajo1Centro,EntidadFederativa
where EntidadFederativa.idEntidadFederativa = CentrosTrabajo1Centro.idEntidadFederativa
UNION

select EntidadFederativa,CentrosTrabajoOperacion,Censados,NoCensados,
ContingenciaOperativa,Negativas,NoLocalizado,Basica,CentroAtencionMultiple,
ApoyoEduacionEspecial,AdministrativosApoyoEducacionBasica,Escuelas,Preescolar,
Primaria,Secundaria
from CentrosTrabajo1Sur,EntidadFederativa
where EntidadFederativa.idEntidadFederativa = CentrosTrabajo1Sur.idEntidadFederativa
;