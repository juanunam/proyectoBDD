select SUM(Alumnos.TotalAlumnos) as TotalAlumnos, NivelEducativo from Alumnos, NivelEducativo where Alumnos.idNivelEducativo = NivelEducativo.idNivelEducativo group by NivelEducativo;

select SUM(Alumnos.TotalAlumnos) as TotalAlumnos, TipoServicio from Alumnos, TipoServicio where Alumnos.idTipoServicio = TipoServicio.idTipoServicio group by Tiposervicio;


select sum(Personal1.TotalPersonal) as TotalPersonal, CondicionLaboral from Personal1, CondicionLaboral where Personal1.idCondicionLaboral = CondicionLaboral.idCondicionLaboral group by CondicionLaboral;

select sum(Personal1.TotalPersonal) as TotalPersonal, CondicionPresencia from Personal1, CondicionPresencia where Personal1.idCondicionPresencia = CondicionPresencia.idCondicionPresencia group by CondicionPresencia;

select sum(Inmuebles.TotalNumeroInmueblesEscuela) as TotalEscuelas, TipoSostenimiento from Inmuebles, TipoSostenimiento where Inmuebles.idTipoSostenimiento = TipoSostenimiento.idTipoSostenimiento group by TipoSostenimiento;
