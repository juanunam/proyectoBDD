
/*	Consulta 1*/
select SUM(AlumnosCentro.TotalAlumnos) as TotalAlumnos, NivelEducativo from AlumnosCentro, NivelEducativo where AlumnosCentro.idNivelEducativo = NivelEducativo.idNivelEducativo group by NivelEducativo;

/*	Consulta 2*/
select SUM(AlumnosCentro.TotalAlumnos) as TotalAlumnos, TipoServicio from AlumnosCentro, TipoServicio where AlumnosCentro.idTipoServicio = TipoServicio.idTipoServicio group by Tiposervicio;

/*	Consulta 3*/

select sum(Personal1Sur.TotalPersonal) as TotalPersonal, CondicionLaboral from Personal1Sur, CondicionLaboral where Personal1Sur.idCondicionLaboral = CondicionLaboral.idCondicionLaboral group by CondicionLaboral;

/*	Consulta 4*/
select sum(Personal1Sur.TotalPersonal) as TotalPersonal, CondicionPresencia from Personal1Sur, CondicionPresencia where Personal1Sur.idCondicionPresencia = CondicionPresencia.idCondicionPresencia group by CondicionPresencia;

/*	Consulta 5*/
select sum(InmueblesNorte.TotalNumeroInmueblesEscuela) as TotalEscuelas, TipoSostenimiento from InmueblesNorte, TipoSostenimiento where InmueblesNorte.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento group by TipoSostenimiento;
