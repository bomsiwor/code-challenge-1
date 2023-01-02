CREATE DATABASE IF NOT EXISTS `DBnilai` 
CHARACTER SET `utf8`;

CREATE TABLE IF NOT EXISTS `DBnilai`.`role` (
  `id` INT(12) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DBnilai`.`users` (
  `id` INT(12) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `role_id` INT(12) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  FOREIGN KEY (`role_id`) REFERENCES role(`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DBnilai`.`jurusan` (
  `id` INT(12) NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DBnilai`.`mahasiswa` (
  `nim` INT(12) NOT NULL AUTO_INCREMENT,
  `user_id` INT(12) NOT NULL,
  `nama` VARCHAR(255) NOT NULL DEFAULT 'yes',
  `tl` DATE NOT NULL,
  jurusan INT(12) NOT NULL,
  PRIMARY KEY (`nim`),
  FOREIGN KEY (jurusan) REFERENCES jurusan(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DBnilai`.`mata_kuliah` (
  `id` INT(12) NOT NULL AUTO_INCREMENT,
  `judul` VARCHAR(255) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DBnilai`.`dosen` (
  `id` INT(12) NOT NULL AUTO_INCREMENT,
  `user_id` INT(12) NOT NULL,
  `nama` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DBnilai`.`data_nilai` (
  `id` INT(12) NOT NULL AUTO_INCREMENT,
  `nim` INT(12) NOT NULL,
  `matkul_id` INT(12) NOT NULL,
  `dosen_id` INT(12) NOT NULL,
  `nilai` INT(3) NOT NULL DEFAULT '0',
  `keterangan` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(`nim`) REFERENCES mahasiswa(`nim`),
  FOREIGN KEY(`dosen_id`) REFERENCES dosen(`id`),
  FOREIGN KEY(`matkul_id`) REFERENCES mata_kuliah(`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `DBnilai`.`kelas` (
  `nim` INT(12) NULL AUTO_INCREMENT,
  `matkul_id` INT(12) NOT NULL,
  PRIMARY KEY (`nim`, `matkul_id`),
  FOREIGN KEY (nim) REFERENCES mahasiswa(`nim`),
  FOREIGN KEY (matkul_id) REFERENCES mata_kuliah(`id`)
) ENGINE = InnoDB;