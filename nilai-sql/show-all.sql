SELECT mata_kuliah.judul AS mata_kuliah, mahasiswa.nama, data_nilai.nilai, jurusan.nama AS jurusan,
dosen.nama AS dosen,
mahasiswa.tl AS tanggal_lahir,
YEAR(CURRENT_DATE) - YEAR(mahasiswa.tl) - (DATE_FORMAT(CURRENT_DATE, '%m%d')<DATE_FORMAT(mahasiswa.tl, '%m%d')) as umur
FROM data_nilai
LEFT JOIN mata_kuliah
ON data_nilai.matkul_id = mata_kuliah.id
LEFT JOIN mahasiswa
ON mahasiswa.nim = data_nilai.nim
LEFT JOIN jurusan
ON mahasiswa.jurusan = jurusan.id
LEFT JOIN dosen
ON dosen.id = data_nilai.dosen_id
WHERE dosen.nama = 'Joko' AND jurusan.nama = 'Elins' AND data_nilai.nilai <= 70
ORDER BY `jurusan` DESC
;