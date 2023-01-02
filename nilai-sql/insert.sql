
INSERT INTO `DBnilai`.`role` (
    name
)
VALUES 
('mahasiswa'),
('dosen');

INSERT INTO
  `DBnilai`.`users` (`email`, `password`, `role_id`)
VALUES
  (
    'ahmad@gmail.com',
    'password',
    1
  ),
  (
    'tono@gmail.com',
    'password',
    1
  ),
  (
    'rudi@gmail.com',
    'password',
    1
  ),
  (
    'rochmad@gmail.com',
    'password',
    2
  ),
  (
    'joko@gmail.com',
    'password',
    2
  )
  ;

INSERT INTO
  `DBnilai`.`jurusan` (nama)
VALUES
  ('Elins');


INSERT INTO
  `DBnilai`.`mahasiswa` (nim, user_id, nama, tl, jurusan)
VALUES
  (2190001, 1, 'Ahmad Alfiansyah', '2000-01-01', 1),
  (2190002, 3, 'Rudi', '2000-03-12', 1),
  (2190003, 2, 'Tono', '2001-09-13', 1)
;

INSERT INTO
  `DBnilai`.`dosen` (nama, user_id)
VALUES
  ('Rochmad', 4),
  ('Joko', 5)
  ;

INSERT INTO
  `DBnilai`.`mata_kuliah` (judul)
VALUES
  ('Fisika 1'),
  ('Elektronika')
  ;

INSERT INTO
  `DBnilai`.`data_nilai` (nim, matkul_id, dosen_id, nilai, keterangan)
VALUES
  (2190001, 1, 1, 80, 'Lanjutkan!'),
  (2190002, 1, 1, 70, 'Baik!'),
  (2190003, 1, 1, 60, 'Hadeh!'),
  (2190001, 2, 2, 70, 'Baik!'),
  (2190002, 2, 2, 75, 'Baik!')
  ;

INSERT INTO
  `DBnilai`.`kelas` (nim, matkul_id)
VALUES
  (2190001, 1),
  (2190002, 1),
  (2190003, 1),
  (2190001, 2),
  (2190002, 2)
  ;