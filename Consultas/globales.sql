
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


*/


 

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


select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
  and (EntidadFederativa.idEntidadFederativa =32 OR
EntidadFederativa.idEntidadFederativa =29 OR
EntidadFederativa.idEntidadFederativa =24 OR
EntidadFederativa.idEntidadFederativa =22 OR
EntidadFederativa.idEntidadFederativa =18 OR
EntidadFederativa.idEntidadFederativa =17 OR
EntidadFederativa.idEntidadFederativa =15 OR
EntidadFederativa.idEntidadFederativa =14 OR
EntidadFederativa.idEntidadFederativa =13 OR
EntidadFederativa.idEntidadFederativa =11 OR
EntidadFederativa.idEntidadFederativa =9);


select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad
 and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo and 
 EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
  and (EntidadFederativa.idEntidadFederativa =31 OR
EntidadFederativa.idEntidadFederativa =30 OR
EntidadFederativa.idEntidadFederativa =27 OR
EntidadFederativa.idEntidadFederativa =23 OR
EntidadFederativa.idEntidadFederativa =21 OR
EntidadFederativa.idEntidadFederativa =20 OR
EntidadFederativa.idEntidadFederativa =16 OR
EntidadFederativa.idEntidadFederativa =12 OR
EntidadFederativa.idEntidadFederativa =7 OR
EntidadFederativa.idEntidadFederativa =6 OR
EntidadFederativa.idEntidadFederativa =4);

select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo, 
Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres  
from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento 
where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa 
and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo 
and EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento 
order by EntidadFederativa.EntidadFederativa;



 /*
 
 */ 

/**Equivalentes*/

select EntidadFederativa.EntidadFederativa as EntidadFederativa, NivelEducativo.NivelEducativo as NivelEducativo,  Edad.RangoEdad as Edad, TipoSostenimiento.TipoSostenimiento as TipoSostenimiento, Hombres , Mujeres   from EdadAlumnosTipoSostenimiento,EntidadFederativa,NivelEducativo,Edad, TipoSostenimiento where EdadAlumnosTipoSostenimiento.idEntidadFederativa=EntidadFederativa.idEntidadFederativa and EdadAlumnosTipoSostenimiento.idEdad =Edad.idEdad and EdadAlumnosTipoSostenimiento.idNivelEducativo =NivelEducativo.idNivelEducativo and EdadAlumnosTipoSostenimiento.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento ;