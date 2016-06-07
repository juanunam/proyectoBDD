
/*




//centro
32
29
24
22
18
17
15
14
13
11
9



//Norte
28
26
25
19
10
8
5
3
2
1

//Sur

31
30
27
23
21
20
16
12
7
6
4

and EntidadFederativa.idEntidadFederativa <> 28 AND
EntidadFederativa.idEntidadFederativa <> 26 AND
EntidadFederativa.idEntidadFederativa <> 25 AND
EntidadFederativa.idEntidadFederativa <> 19 AND
EntidadFederativa.idEntidadFederativa <> 10 AND
EntidadFederativa.idEntidadFederativa <> 8 AND
EntidadFederativa.idEntidadFederativa <> 5 AND
EntidadFederativa.idEntidadFederativa <> 3 AND
EntidadFederativa.idEntidadFederativa <> 2 AND
EntidadFederativa.idEntidadFederativa <> 1 



  EntidadFederativa.idEntidadFederativa<>32 AND
EntidadFederativa.idEntidadFederativa <>29 AND
EntidadFederativa.idEntidadFederativa <>24 AND
EntidadFederativa.idEntidadFederativa <>22 AND
EntidadFederativa.idEntidadFederativa <>18 AND
EntidadFederativa.idEntidadFederativa <>17 AND
EntidadFederativa.idEntidadFederativa <>15 AND
EntidadFederativa.idEntidadFederativa <>14 AND
EntidadFederativa.idEntidadFederativa <>13 AND
EntidadFederativa.idEntidadFederativa <>11 AND
EntidadFederativa.idEntidadFederativa <>9


  and (EntidadFederativa.idEntidadFederativa <>31 AND
EntidadFederativa.idEntidadFederativa <>30 AND
EntidadFederativa.idEntidadFederativa <>27 AND
EntidadFederativa.idEntidadFederativa <>23 AND
EntidadFederativa.idEntidadFederativa <>21 AND
EntidadFederativa.idEntidadFederativa <>20 AND
EntidadFederativa.idEntidadFederativa <>16 AND
EntidadFederativa.idEntidadFederativa <>12 AND
EntidadFederativa.idEntidadFederativa <>7 AND
EntidadFederativa.idEntidadFederativa <>6 AND
EntidadFederativa.idEntidadFederativa <>4);
*/


 /* Consulta 1 sin normal conjuntiva  */

select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
  and (EntidadFederativa.idEntidadFederativa =28 OR
EntidadFederativa.idEntidadFederativa =26 OR
EntidadFederativa.idEntidadFederativa =25 OR
EntidadFederativa.idEntidadFederativa =19 OR
EntidadFederativa.idEntidadFederativa =10 OR
EntidadFederativa.idEntidadFederativa =8 OR
EntidadFederativa.idEntidadFederativa =5 OR
EntidadFederativa.idEntidadFederativa =3 OR
EntidadFederativa.idEntidadFederativa =2 OR
EntidadFederativa.idEntidadFederativa =1 );

 /* Consulta 1 con normal conjuntiva */

select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
and EntidadFederativa.idEntidadFederativa<>32 AND
EntidadFederativa.idEntidadFederativa <>29 AND
EntidadFederativa.idEntidadFederativa <>24 AND
EntidadFederativa.idEntidadFederativa <>22 AND
EntidadFederativa.idEntidadFederativa <>18 AND
EntidadFederativa.idEntidadFederativa <>17 AND
EntidadFederativa.idEntidadFederativa <>15 AND
EntidadFederativa.idEntidadFederativa <>14 AND
EntidadFederativa.idEntidadFederativa <>13 AND
EntidadFederativa.idEntidadFederativa <>11 AND
EntidadFederativa.idEntidadFederativa <>9  AND
EntidadFederativa.idEntidadFederativa <>31 AND
EntidadFederativa.idEntidadFederativa <>30 AND
EntidadFederativa.idEntidadFederativa <>27 AND
EntidadFederativa.idEntidadFederativa <>23 AND
EntidadFederativa.idEntidadFederativa <>21 AND
EntidadFederativa.idEntidadFederativa <>20 AND
EntidadFederativa.idEntidadFederativa <>16 AND
EntidadFederativa.idEntidadFederativa <>12 AND
EntidadFederativa.idEntidadFederativa <>7  AND
EntidadFederativa.idEntidadFederativa <>6  AND
EntidadFederativa.idEntidadFederativa <>4;

 /* Consulta 2 SIN CONJUNTIVA*/

select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
  and 
EntidadFederativa.idEntidadFederativa <>31 AND
EntidadFederativa.idEntidadFederativa <>30 AND
EntidadFederativa.idEntidadFederativa <>27 AND
EntidadFederativa.idEntidadFederativa <>23 AND
EntidadFederativa.idEntidadFederativa <>21 AND
EntidadFederativa.idEntidadFederativa <>20 AND
EntidadFederativa.idEntidadFederativa <>16 AND
EntidadFederativa.idEntidadFederativa <>12 AND
EntidadFederativa.idEntidadFederativa <>7  AND
EntidadFederativa.idEntidadFederativa <>6  AND
EntidadFederativa.idEntidadFederativa <>4  AND
EntidadFederativa.idEntidadFederativa <> 28 AND
EntidadFederativa.idEntidadFederativa <> 26 AND
EntidadFederativa.idEntidadFederativa <> 25 AND
EntidadFederativa.idEntidadFederativa <> 19 AND
EntidadFederativa.idEntidadFederativa <> 10 AND
EntidadFederativa.idEntidadFederativa <> 8 AND
EntidadFederativa.idEntidadFederativa <> 5 AND
EntidadFederativa.idEntidadFederativa <> 3 AND
EntidadFederativa.idEntidadFederativa <> 2 AND
EntidadFederativa.idEntidadFederativa <> 1 ;


 /* Consulta 2 CON CONJUNTIVA*/

select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
  and 
EntidadFederativa.idEntidadFederativa <>31 AND
EntidadFederativa.idEntidadFederativa <>30 AND
EntidadFederativa.idEntidadFederativa <>27 AND
EntidadFederativa.idEntidadFederativa <>23 AND
EntidadFederativa.idEntidadFederativa <>21 AND
EntidadFederativa.idEntidadFederativa <>20 AND
EntidadFederativa.idEntidadFederativa <>16 AND
EntidadFederativa.idEntidadFederativa <>12 AND
EntidadFederativa.idEntidadFederativa <>7  AND
EntidadFederativa.idEntidadFederativa <>6  AND
EntidadFederativa.idEntidadFederativa <>4  AND
EntidadFederativa.idEntidadFederativa <> 28 AND
EntidadFederativa.idEntidadFederativa <> 26 AND
EntidadFederativa.idEntidadFederativa <> 25 AND
EntidadFederativa.idEntidadFederativa <> 19 AND
EntidadFederativa.idEntidadFederativa <> 10 AND
EntidadFederativa.idEntidadFederativa <> 8 AND
EntidadFederativa.idEntidadFederativa <> 5 AND
EntidadFederativa.idEntidadFederativa <> 3 AND
EntidadFederativa.idEntidadFederativa <> 2 AND
EntidadFederativa.idEntidadFederativa <> 1 ;

 /* Consulta 3 sin conjuntiva*/

select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
  and 
EntidadFederativa.idEntidadFederativa <> 28 AND
EntidadFederativa.idEntidadFederativa <> 26 AND
EntidadFederativa.idEntidadFederativa <> 25 AND
EntidadFederativa.idEntidadFederativa <> 19 AND
EntidadFederativa.idEntidadFederativa <> 10 AND
EntidadFederativa.idEntidadFederativa <> 8 AND
EntidadFederativa.idEntidadFederativa <> 5 AND
EntidadFederativa.idEntidadFederativa <> 3 AND
EntidadFederativa.idEntidadFederativa <> 2 AND
EntidadFederativa.idEntidadFederativa <> 1 AND
EntidadFederativa.idEntidadFederativa <>32 AND
EntidadFederativa.idEntidadFederativa <>29 AND
EntidadFederativa.idEntidadFederativa <>24 AND
EntidadFederativa.idEntidadFederativa <>22 AND
EntidadFederativa.idEntidadFederativa <>18 AND
EntidadFederativa.idEntidadFederativa <>17 AND
EntidadFederativa.idEntidadFederativa <>15 AND
EntidadFederativa.idEntidadFederativa <>14 AND
EntidadFederativa.idEntidadFederativa <>13 AND
EntidadFederativa.idEntidadFederativa <>11 AND
EntidadFederativa.idEntidadFederativa <> 9;

 /* Consulta 3  con conjuntiva*/

select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
  and 
EntidadFederativa.idEntidadFederativa <> 28 AND
EntidadFederativa.idEntidadFederativa <> 26 AND
EntidadFederativa.idEntidadFederativa <> 25 AND
EntidadFederativa.idEntidadFederativa <> 19 AND
EntidadFederativa.idEntidadFederativa <> 10 AND
EntidadFederativa.idEntidadFederativa <> 8 AND
EntidadFederativa.idEntidadFederativa <> 5 AND
EntidadFederativa.idEntidadFederativa <> 3 AND
EntidadFederativa.idEntidadFederativa <> 2 AND
EntidadFederativa.idEntidadFederativa <> 1 AND
EntidadFederativa.idEntidadFederativa <>32 AND
EntidadFederativa.idEntidadFederativa <>29 AND
EntidadFederativa.idEntidadFederativa <>24 AND
EntidadFederativa.idEntidadFederativa <>22 AND
EntidadFederativa.idEntidadFederativa <>18 AND
EntidadFederativa.idEntidadFederativa <>17 AND
EntidadFederativa.idEntidadFederativa <>15 AND
EntidadFederativa.idEntidadFederativa <>14 AND
EntidadFederativa.idEntidadFederativa <>13 AND
EntidadFederativa.idEntidadFederativa <>11 AND
EntidadFederativa.idEntidadFederativa <> 9;

 /* Consulta 4 */

select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento 
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo 
and EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
order by EntidadFederativa.EntidadFederativa;


 /* Consulta 5 */

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
 and EntidadFederativa.idEntidadFederativa<>32 AND
EntidadFederativa.idEntidadFederativa <>29 AND
EntidadFederativa.idEntidadFederativa <>24 AND
EntidadFederativa.idEntidadFederativa <>22 AND
EntidadFederativa.idEntidadFederativa <>18 AND
EntidadFederativa.idEntidadFederativa <>17 AND
EntidadFederativa.idEntidadFederativa <>15 AND
EntidadFederativa.idEntidadFederativa <>14 AND
EntidadFederativa.idEntidadFederativa <>13 AND
EntidadFederativa.idEntidadFederativa <>11 AND
EntidadFederativa.idEntidadFederativa <>9  AND
EntidadFederativa.idEntidadFederativa <>31 AND
EntidadFederativa.idEntidadFederativa <>30 AND
EntidadFederativa.idEntidadFederativa <>27 AND
EntidadFederativa.idEntidadFederativa <>23 AND
EntidadFederativa.idEntidadFederativa <>21 AND
EntidadFederativa.idEntidadFederativa <>20 AND
EntidadFederativa.idEntidadFederativa <>16 AND
EntidadFederativa.idEntidadFederativa <>12 AND
EntidadFederativa.idEntidadFederativa <>7  AND
EntidadFederativa.idEntidadFederativa <>6  AND
EntidadFederativa.idEntidadFederativa <>4 group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion;


 /* Consulta 6 */

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
   and 
EntidadFederativa.idEntidadFederativa <>31 AND
EntidadFederativa.idEntidadFederativa <>30 AND
EntidadFederativa.idEntidadFederativa <>27 AND
EntidadFederativa.idEntidadFederativa <>23 AND
EntidadFederativa.idEntidadFederativa <>21 AND
EntidadFederativa.idEntidadFederativa <>20 AND
EntidadFederativa.idEntidadFederativa <>16 AND
EntidadFederativa.idEntidadFederativa <>12 AND
EntidadFederativa.idEntidadFederativa <>7  AND
EntidadFederativa.idEntidadFederativa <>6  AND
EntidadFederativa.idEntidadFederativa <>4  AND
EntidadFederativa.idEntidadFederativa <> 28 AND
EntidadFederativa.idEntidadFederativa <> 26 AND
EntidadFederativa.idEntidadFederativa <> 25 AND
EntidadFederativa.idEntidadFederativa <> 19 AND
EntidadFederativa.idEntidadFederativa <> 10 AND
EntidadFederativa.idEntidadFederativa <> 8 AND
EntidadFederativa.idEntidadFederativa <> 5 AND
EntidadFederativa.idEntidadFederativa <> 3 AND
EntidadFederativa.idEntidadFederativa <> 2 AND
EntidadFederativa.idEntidadFederativa <> 1  group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion;

 /* Consulta 7 */

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
  and 
EntidadFederativa.idEntidadFederativa <> 28 AND
EntidadFederativa.idEntidadFederativa <> 26 AND
EntidadFederativa.idEntidadFederativa <> 25 AND
EntidadFederativa.idEntidadFederativa <> 19 AND
EntidadFederativa.idEntidadFederativa <> 10 AND
EntidadFederativa.idEntidadFederativa <> 8 AND
EntidadFederativa.idEntidadFederativa <> 5 AND
EntidadFederativa.idEntidadFederativa <> 3 AND
EntidadFederativa.idEntidadFederativa <> 2 AND
EntidadFederativa.idEntidadFederativa <> 1 AND
EntidadFederativa.idEntidadFederativa <>32 AND
EntidadFederativa.idEntidadFederativa <>29 AND
EntidadFederativa.idEntidadFederativa <>24 AND
EntidadFederativa.idEntidadFederativa <>22 AND
EntidadFederativa.idEntidadFederativa <>18 AND
EntidadFederativa.idEntidadFederativa <>17 AND
EntidadFederativa.idEntidadFederativa <>15 AND
EntidadFederativa.idEntidadFederativa <>14 AND
EntidadFederativa.idEntidadFederativa <>13 AND
EntidadFederativa.idEntidadFederativa <>11 AND
EntidadFederativa.idEntidadFederativa <> 9 group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion;

 /* Consulta 8 */

select EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion,sum(TotalPersonal),sum(DirectorEscuela),sum(DirectorGrupo),
sum(MaestroGrupo),sum(InstructorComunitario),sum(DocenteApoyo),sum(DirectivoServicio),sum(PrefectoApoyo),
sum(ConserjeIntendente),sum(AdministrativaEscuelas),sum(SupervisorZona),sum(AdministrativaCentros),sum(Otra),sum(NoEspecificado) 
from Personal1,EntidadFederativa,CondicionPresencia,CondicionLaboral,CondicionIdentificacion
where Personal1.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and Personal1.idCondicionLaboral=CondicionLaboral.idCondicionLaboral
 and Personal1.idCondicionPresencia =CondicionPresencia.idCondicionPresencia 
 and Personal1.idCondicionIdentificacion = CondicionIdentificacion.idCondicionIdentificacion 
	group by EntidadFederativa,CondicionLaboral,CondicionPresencia,CondicionIdentificacion;

 /* Consulta 9 */

select EntidadFederativa,CentrosTrabajoOperacion,Censados,NoCensados,
ContingenciaOperativa,Negativas,NoLocalizado,Basica,CentroAtencionMultiple,
ApoyoEduacionEspecial,AdministrativosApoyoEducacionBasica,Escuelas,Preescolar,
Primaria,Secundaria
from CentrosTrabajo1,EntidadFederativa
where EntidadFederativa.idEntidadFederativa = CentrosTrabajo1.idEntidadFederativa
and 
EntidadFederativa.idEntidadFederativa <> 28 AND
EntidadFederativa.idEntidadFederativa <> 26 AND
EntidadFederativa.idEntidadFederativa <> 25 AND
EntidadFederativa.idEntidadFederativa <> 19 AND
EntidadFederativa.idEntidadFederativa <> 10 AND
EntidadFederativa.idEntidadFederativa <> 8 AND
EntidadFederativa.idEntidadFederativa <> 5 AND
EntidadFederativa.idEntidadFederativa <> 3 AND
EntidadFederativa.idEntidadFederativa <> 2 AND
EntidadFederativa.idEntidadFederativa <> 1 AND
EntidadFederativa.idEntidadFederativa <>32 AND
EntidadFederativa.idEntidadFederativa <>29 AND
EntidadFederativa.idEntidadFederativa <>24 AND
EntidadFederativa.idEntidadFederativa <>22 AND
EntidadFederativa.idEntidadFederativa <>18 AND
EntidadFederativa.idEntidadFederativa <>17 AND
EntidadFederativa.idEntidadFederativa <>15 AND
EntidadFederativa.idEntidadFederativa <>14 AND
EntidadFederativa.idEntidadFederativa <>13 AND
EntidadFederativa.idEntidadFederativa <>11 AND
EntidadFederativa.idEntidadFederativa <> 9 ;

 /* Consulta 10 */

select EntidadFederativa,CentrosTrabajoOperacion,Censados,NoCensados,
ContingenciaOperativa,Negativas,NoLocalizado,Basica,CentroAtencionMultiple,
ApoyoEduacionEspecial,AdministrativosApoyoEducacionBasica,Escuelas,Preescolar,
Primaria,Secundaria
from CentrosTrabajo1,EntidadFederativa
where EntidadFederativa.idEntidadFederativa = CentrosTrabajo1.idEntidadFederativa
              


