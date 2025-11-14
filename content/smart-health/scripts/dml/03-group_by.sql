--1.Contar cyantos pacientes estan registrador por tipo de docuemtno,
--mostrando el nombre del tipo de documento y la cantidad total de pacientes.
--ordenados por cantidad de mayor a menor.

--smart_health.patients: FK(document_type_id)
--smarth_health.document_types: PK(document_type_id)
--AGGREGATE FUNCTION: COUNT
SELECT
    T2.type_name AS tipo_documento,
    COUNT(*) AS total_documentos

FROM smart_health.patients T1
INNER JOIN smart_health.document_types T2
    ON T1.document_type_id = T2.document_type_id
GROUP BY T2.type_name
ORDER BY total_documentos DESC;

--2. Calcular el promedio de edad de los pacientes registrados,
--mostrando solo el promedio de edad de los pacientes.
--smart_health.patients: FK(document_type_id)}
--AGGREGATE FUNCTION: AVG
SELECT AVG(EXTRACT(YEAR FROM AGE(birth_date))) AS promedio_edad
FROM smart_health.patients;

--3.PRIMERA Y ULTIMA CITA REGISTRADA,MOSTRANDO LA FECHA DE LA CITA Y EL NOMBRE DEL PACIENTE.
--smart_health.appointments: FK(patient_id)
--smart_health.patients: PK(patient_id)
--AGGREGATE FUNCTION: MIN, MAX

