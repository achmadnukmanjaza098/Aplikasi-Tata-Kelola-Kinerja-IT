/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : tk-4

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 23/10/2023 00:18:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dimensis
-- ----------------------------
DROP TABLE IF EXISTS `dimensis`;
CREATE TABLE `dimensis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `dimensi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bobot` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dimensis
-- ----------------------------
INSERT INTO `dimensis` VALUES (1, 'CORPORATE CONTRIBUTION', 3, '2023-10-22 10:38:38', '2023-10-22 10:38:38');
INSERT INTO `dimensis` VALUES (2, 'STAKEHOLDER (USER) ORIENTATION', 4, '2023-10-22 10:38:38', '2023-10-22 10:38:38');
INSERT INTO `dimensis` VALUES (3, 'OPERATIONAL EXCELLENCE (KEUNGGULAN OPERASIONAL) ', 4, '2023-10-22 10:38:38', '2023-10-22 10:38:38');
INSERT INTO `dimensis` VALUES (4, 'FUTURE ORIENTATION (Orientasi Masa Depan)', 4, '2023-10-22 10:38:38', '2023-10-22 10:38:38');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for jawaban_pertanyaans
-- ----------------------------
DROP TABLE IF EXISTS `jawaban_pertanyaans`;
CREATE TABLE `jawaban_pertanyaans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `pertanyaan_id` bigint UNSIGNED NOT NULL,
  `jawaban` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jawaban_pertanyaans_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `jawaban_pertanyaans_pertanyaan_id_foreign`(`pertanyaan_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jawaban_pertanyaans
-- ----------------------------
INSERT INTO `jawaban_pertanyaans` VALUES (1, 1, 1, 'D', '2023-10-22 13:59:23', '2023-10-22 13:59:23');
INSERT INTO `jawaban_pertanyaans` VALUES (2, 1, 2, 'A', '2023-10-22 13:59:23', '2023-10-22 13:59:23');
INSERT INTO `jawaban_pertanyaans` VALUES (3, 1, 3, 'E', '2023-10-22 13:59:23', '2023-10-22 13:59:23');
INSERT INTO `jawaban_pertanyaans` VALUES (4, 1, 29, 'B', '2023-10-22 13:59:23', '2023-10-22 13:59:23');
INSERT INTO `jawaban_pertanyaans` VALUES (5, 1, 28, 'A', '2023-10-22 13:59:23', '2023-10-22 13:59:23');
INSERT INTO `jawaban_pertanyaans` VALUES (6, 1, 65, 'E', '2023-10-22 13:59:23', '2023-10-22 13:59:23');
INSERT INTO `jawaban_pertanyaans` VALUES (7, 1, 66, 'B', '2023-10-22 13:59:23', '2023-10-22 13:59:23');
INSERT INTO `jawaban_pertanyaans` VALUES (8, 1, 64, 'A', '2023-10-22 13:59:23', '2023-10-22 13:59:23');
INSERT INTO `jawaban_pertanyaans` VALUES (9, 1, 42, 'A', '2023-10-22 13:59:23', '2023-10-22 13:59:23');
INSERT INTO `jawaban_pertanyaans` VALUES (10, 1, 43, 'E', '2023-10-22 13:59:23', '2023-10-22 13:59:23');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_10_22_092505_create_roles_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_10_22_092633_add_columns_role_id_in_users_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_10_22_100757_create_dimensis_table', 2);
INSERT INTO `migrations` VALUES (8, '2023_10_22_110307_create_pertanyaans_table', 3);
INSERT INTO `migrations` VALUES (9, '2023_10_22_124745_create_variabels_table', 4);
INSERT INTO `migrations` VALUES (10, '2023_10_22_132246_create_jawaban_pertanyaans_table', 5);
INSERT INTO `migrations` VALUES (11, '2023_10_22_135218_create_jawaban_pertanyaans_table', 6);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for pertanyaans
-- ----------------------------
DROP TABLE IF EXISTS `pertanyaans`;
CREATE TABLE `pertanyaans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `dimensi_id` bigint UNSIGNED NOT NULL,
  `pertanyaan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `variabel` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pila` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pilb` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pilc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pild` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pertanyaans_dimensi_id_foreign`(`dimensi_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pertanyaans
-- ----------------------------
INSERT INTO `pertanyaans` VALUES (1, 1, 'Berapa persen kira-kira dana pengembangan TIK yang dialokasikan oleh kampus dari pengeluaran yang ada ?', 'komitmen pimpinan', 'Dibawah 5%', 'Antara 5%-10%', 'Antara 11%-20%', 'Antara 21%-30%', 'Diatas 30%', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (2, 1, 'Apakah perguruan tinggi memiliki program sosialisasi dan edukasi mengenai pentingnya pemanfaatan TIK kampus?', 'komitmen pimpinan', 'Ada, namun bersifat sporadis dan tidak terencana', 'Ada, dengan ruang lingkup dan target sasaran audience sesuai dengan anggaran', 'Ada, terencana dengan baik dilaksanakan secara konsisten, kontinyu dan berkesinambungan', 'Ada, terencana dengan baik dan dilaksanakan secara konsisten, kontinyu dan berkesinambungan dan mendapatkan banyak bantuan serta didukung dari stakeholder lain diluar perangkat organisasi per', 'Ada, terencana dengan baik dan dilaksanakan secara konsisten, kontinyu dan berkesinambungan dan mendapatkan banyak bantuan serta didukung dari stakeholder lain diluar perangkat organisasi per', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (3, 1, 'Apakah perguruan tinggi menggunakan media tertentu dalam melakukan sosialisasi dan edukasi mengenai pentingnya pemanfaatan teknologi informasi dan komunikasi kampus ?', 'komitmen pimpinan', 'Tidak', 'Ya, di beberapa media namun dalam ukuran kecil', 'Ya, di sejumlah media dan cukup efektif', 'Ya, di sejumlah media dan sangat signifikan dampaknya', 'Ya, cukup banyak jalur media yang memberikan kontribusi positif dan signifikan terhadap perkembangan TIK perguruan tinggi.', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (4, 1, 'Dari manasajakah sumber dana terbesar yang diperuntukkan untuk melakukan investasi dalam membangun TIK Perguruan tinggi ?', 'alokasi sumber daya', 'Tidak dari mana-mana, karena memang belum memiliki TIK', 'Diambil melalui dana yang berasal dari uang bayaran mahasiswa, baik yang berupa sumbangan maupun uang kuliah', 'Dialokasikan khusus oleh pemilik perguruan tinggi dalam bentuk belanja modal', 'Sebagian dari dana bantuan pemerintah Indonesia dan sisa hasil usaha penyelenggaraan belajar mengajar', 'Investasi pihak ketiga (eksternal) yang memiliki komitme penuh jangka panjang dalam membangun perguruan tinggi yang ada.', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (5, 1, 'Berapa kira-kira nilai investasi TIK dalam tiga tahun terakhir ?', 'alokasi sumber daya', 'Kurang dari Rp. 100 juta', 'Rp. 100 â€“ 500 juta', 'Rp. 500 juta â€“ 1 Milyar', 'Rp. 1-3 Milyar', '> Rp. 3 Milyar', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (6, 1, 'Berapa jumlah karyawan yang berlatar belakang pendidikan perguruan tinggi bidang komputer atau informatika ?', 'alokasi sumber daya', 'Kurang dari 1% dari keseluruhan pegawai di Perguruan tinggi', '2%-5% dari keseluruhan pegawai di Perguruan tinggi', '6%-15% dari keseluruhan pegawai di Perguruan tinggi', '16%-35% dari keseluruhan pegawai di Perguruan tinggi', '>35% dari keseluruhan pegawai di Perguruan tinggi', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (7, 1, 'Apakah perguruan tinggi memiliki unit unit atau divisi khusus yang bertanggung jawab terhadap perencanaan, pembangunan, penerapan, pengendalian  dan pengembangan TIK di lingkungan kampus ?', 'unit pengelola teknologi', 'Tidak ada', 'Ada, namun tidak beroperasi secara optimal karena masih mengerjakan program atau proyek', 'Ada, dan merupakan suatu unit organisasi tersendiri dengan tanggung jawab yang jelas', 'Ada, merupakan suatu unit organisasi tersendiri, yang berjalan berdasarkan tanggung jawab yang jelas sesuai dengan SOP yang telah disusun dan dikembangkan', 'Ada, merupakan sebuah unit organisasi independen, dimana didukung oleh berbagai pihak ketiga yang sesuai dengan bidang keahliannya, dibawah tata kelola manajemen yang rapi dan transparan.', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (8, 1, 'Jika perguruan tinggi memiliki unit khusus yang dibentuk oleh pihak kampus untuk mengelola TIK yang dimiliki, dibawah komando siapa unit khusus ini berada ?', 'unit pengelola teknologi', 'Tidak dibawah siapa-siapa, karena tidak terdapat unit yang dimaksud', 'Berada dibawah komando salah satu unit kegiatan yang ada di perguruan tinggi', 'Berada dibawah komando salah satu divisi kegiatan yang ada di perguruan tinggi', 'Berada dibawah komando salah satu wakil pimpinan perguruan tinggi institusi', 'Langsung dibawah komando pimpinan perguruan tinggi institusi', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (9, 1, 'Apakah perguruan tinggi memiliki unit atau divisi yang bertanggung jawab terhadap pelatihan TIK dalam lingkungan kampus ?', 'unit pengelola teknologi', 'Tidak ada', 'Ada, namun tidak berorientasi secara optimal karena masih mengerjakan hal-hal yang bersifat ad-hoc, atau berbasis program atau proyek', 'Ada, dan merupakan suatu unit organisasi tersendiri dengan tanggung jawab yang jelas', 'Ada, merupakan suatu unit organisasi tersendiri, yang berjalan berdasarkan tanggung jawab yang jelas sesuai dengan SOP yang telah disusun dan dikembangkan.', 'Ada, merupakan sebuah unit organisasi independen, dimana didukung oleh berbagai pihak ketiga yang sesuai dengan bidang keahliannya, di bawah tata kelola manajemen yang rapi dan transparan', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (10, 1, 'Apakah perguruan tinggi memiliki kebijakan dan peraturan yang mengharuskan setiap civitas akademika memanfaatkan secara intensif TIK dalam lingkungan kampus sebagai penunjang kegiatan belajar', 'kebijakan dan sistem insentif', 'Tidak memiliki', 'Tidak memiliki secara tertulis, namun sering disampaikan dan diwacanakan oleh segenap pimpinan', 'Terdapat kebijakan tertulis melalui surat keputusan pimpinan perguruan tinggi mengenai keharusan menggunakan TIK dalam lingkungan kampus.', 'Terdapat sejumlah kebijakan terkait dengan pemanfaatan TIK sesuai tata aturan yang ada, dan dijadikan sebagai salah satu pengukur kinerja unit maupun individu terkait', 'Terdapat berbagai kebijakan dan peraturan keharusan pemanfaatan TIK dalam lingkungan kampus dipergunakan sebagai komponen pengukur kinerja dan terdapat model insentif yang diterapkan manajeme', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (11, 1, 'Apakah ada sistem insentif yang dikembangkan oleh perguruan tinggi untuk mendorong agar segenap civitas akademika di kampus memanfaatkan teknologi informasi dan komunikasi seoptimal mungkin ?', 'kebijakan dan sistem insentif', 'Tidak ada', 'Ada, namun tidak jelas dan konsisten penerapannya', 'Ada, dimana implementasinya diatur dalam peraturan perguruan tinggi', 'Ada, dimana implementasinya telah terintegrasi dengan sistem pengelolaan sumber daya manusia yang dimiliki oleh perguruan tinggi', 'Ada, dimana model dan implementasinya selain telah terintegrasi secara baik dengan sistem sumber daya manusia, tingkat efekivitasnya pun diukur dan dinilai dari hari ke hari.', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (12, 1, 'Bagaimana karyawan dan staf perguruan tinggi belajar mengenai cara memanfaatkan teknologi informasi dan komunikasi (missal : menggunakan computer dan internet) ?', 'kebijakan dan sistem insentif', 'Kebanyakan belajar sendiri (mandiri) atau otodidak', 'Kebanyakan belajar dari orang lain dan sumber referensi (buku)', 'Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan non formal (pelatihan dan kursus)', 'Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan formal dan vokasi', 'Kebanyakan belajar dari orang lain, sumber referensi, mengikuti pendidikan formal (akademik maupun vokasi) maupun informal.', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (13, 1, 'Bagaimana karyawan dan staf perguruan tinggi belajar mengenai cara memanfaatkan teknologi informasi dan komunikasi (misal : menggunakan komputer dan internet) ?', 'kebijakan dan sistem insentif', 'Kebanyakan belajar sendiri (mandiri) atau otodidak', 'Kebanyakan belajar dari orang lain dan sumber referensi (buku)', 'Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan non formal (pelatihan dan kursus)', 'Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan formal dan vokasi', 'Kebanyakan belajar dari orang lain, sumber referensi, mengikuti pendidikan formal (akademik maupun vokasi) maupun informal', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (14, 1, 'Apakah perguruan tinggi telah memiliki dan menyusun Rencana Strategis Pengembangan TIK (IT Master Plan) untuk kebutuhan kampus ?', 'Renstra dan peta jalan', 'Tidak memiliki', 'Memiliki, namun sudah lama tidak dimutakhirkan (update)', 'Memiliki dan setiap tahun diperbaharui', 'Memiliki dan secara konsisten seluruh program pengembangan TIK kampus didasari pada dokumen ini.', 'Memiliki dan secara konsisten seluruh program pengembangan TIK kampus didasari pada dokumen ini dan dilakukan audit terhadap efektivitas kepatuhannya.', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (15, 1, 'Apakah Rencana Strategis Pengembangan TIK (IT Master Plan) yang dimiliki dipergunakan sebagai panduan / acuan dalam menyelenggarakan berbagai proyek kegiatan teknologi informasi dan komunikas', 'Renstra dan peta jalan', 'Tidak karena memang belum memiliki Rencana Strategis Pengembangan IT (IT Master Plan)', 'Ya, namun baru sebagian kecil saja proyek atau kegiatan yang mengacu pada dokumen ini.', 'Ya, rata-rata proyek atau kegiatan mengacu pada dokumen ini', 'Ya, sebagian besar proyek atau kegiatan mengacu pada dokumen ini.', 'Ya, semua proyek mengacu pada dokumen ini, jika ada proyek yang tidak termasuk maka menjadi bahan masukan untuk merevisi dokumen yang ada.', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (16, 1, 'Bagaimana cara perguruan tinggi menyusun kebutuhan teknologi informasi dan komunikasi yang diinginkan ? ', 'Perencanaan dan pengorganisasian', 'Berkaca pada perguruan tinggi lain, dan mencoba mengikutinya.', 'Menyusun kebutuhan TIK berdasarkan keinginan orang yang menangani TIK', 'Menyusun kebutuhan TIK berdasarkan jumlah unit-unit yang membutuhkan TIK', 'Menyusun kebutuhan TIK berdasarkan analisis kebutuhan masing-masing unit', 'Menyusun kebutuhan TIK berdasarkan analisis kebutuhan masing-masing unit dan senantiasa diperbaharui dan dimutakhirkan sesuai perkembangan organisasi.', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (17, 1, 'Apakah perguruan tinggi memiliki dokumen arsitektur yang dipergunakan sebagai panduan atau acuan teknis pembangunan teknologi informasi dan komunikasi di perguruan tinggi ?', 'Perencanaan dan pengorganisasian', 'Tidak memiliki', 'Ya, namun sebagian kecil inisiatif pembangunan teknologi informasi dan komunikasi yang mengadu pada rancangan arsitektur ini', 'Ya, rata-rata inisiatif pembangunan teknologi informasi dan komunikasi mengacu pada rancangan arsitektur ini.', 'Ya, sebagian besar inisiatif pembangunan teknologi informasi dan komunikasi mengacu pada rancangan arsitektur ini', 'Ya, semua inisiatif pembangunan teknologi informasi dan komunikasi mengacu pada rancangan arsitektur ini.', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (18, 1, 'Apakah perguruan tinggi anda memiliki standar terkait teknologi informasi dan komunikasi di perguruan tinggi yang akan diadopsi (missal : standar dalam tipe aplikasi, fitur / spesifikasi pira', 'Perencanaan dan pengorganisasian', 'Tidak ada sama sekali', 'Ada, kadang-kadang dipergunakan, kadang-kadang tidak', 'Ada, dipergunakan secara konsisten sebagai basis pengelolaan dan dikembangkan secara kontinyu dan berkesinambungan', 'Ada, dipergunakan secraa konsisten sebagai basis pengelolaan dan dikembangkan secara kontinyu dan berkesinambungan', 'Ada, dipergunakan secara konsisten sebagai basis pengelolaan, dikembangkan secara kontinyu dan berkesinambungan, dan dievaluasi / diaudit kepatuhan adopsinya', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (19, 1, 'Apakah memiliki mekanisme penghitungan cost benefit dari setiap program, atau inisiatif investasi pengembangan teknologi informasi dan komunikasi di perguruan tinggi ?', 'Perencanaan dan pengorganisasian', 'Tidak ada, namun sudah dipikirkan untuk menyusunnya', 'Ada, namun belum secara konsisten diadopsi sepenuhnya', 'Ada, dan dijadikan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi', 'Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis evaluasi kinerja perangkat organisasi perguruan tinggi', 'Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis evaluasi kinerja perguruan tinggi dan senantiasa dikembangkan / direvisi mekanisme ba', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (20, 1, 'Apakah segenap pimpinan perguruan tinggi secara intensif menggunakan beragam aplikasi teknologi informasi dan komunikasi dalam aktivitas sehari-harinya ?', 'Pengadaan dan penerapan ', 'Tidak sama sekali', 'Ya, menggunakan namun tidak optimal dan tidak intensif', 'Ya, menggunakan secara efektif dan cukup intensif', 'Ya. menggunakan secara sangat intensif, efektif dan optimal', 'Ya, menggunakan secara sangat intensif, efektif, optimal dan telah berhasil menularkan kebiasaan ini kepada segenap pimpinan manajerial di bawahnya', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (21, 1, 'Apakah suasana atau budaya memanfaatkan teknologi informasi dan komunikasi terasa di dalam lingkungan kampus ?', 'Pengadaan dan penerapan', 'Tidak sama sekali', 'Cukup terasa namun dalam keadaan atau waktu-waktu tertentu saja', 'Cukup terasa dalam situasi sehari-hari', 'Ya, sangat terasa karena hampir seluruh lokasi strategis Nampak segenap civitas akademika memanfaatkan teknologi', 'Ya, sangat terasa karena secara massif terlihat dari aktivitas segenap civitas akademika yang berinteraksi dengan teknologi di setiap sudut-sudut kampus', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (22, 1, 'Apakah perguruan tinggi memiliki dokumen yang jelas dan detail (misal : standar operasional prosedur) dari proses pengelolaan teknologi informasi dan komunikasi di perguruan tinggi ?', 'Pengelolaan dan pengembangan', 'Tidak ada, semua berjalan seperti kebiasaan saja', 'Tidak ada, semua berjalan seperti kebiasaan saja', 'Ada, dipergunakan sebagai panduan kerja namun tidak pernah dikaji maupun dimutakhirkan', 'Ada, dipergunakan sebagai panduan kerja senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja', 'Ada, dipergunakan sebagai panduan kerja senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja dan penentuan remunerasi berdasarkan beban kerja dan tanggu', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (23, 1, 'Apakah memiliki standar baku dalam manajemen pengelolaan proyek (project management) teknologi informasi dan komunikasi di perguruan tinggi ?', 'Pengelolaan dan pengembangan', 'Tidak ada, namun sudah dipikirkan untuk menyusunnya', 'Ada, namun belum secara konsisten diadopsi sepenuhnya', 'Ada, dan dijadikan acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis evaluasi kinerja perangkat organisasi perguruan tinggi', 'Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis kinerja perangkan organisasi perguruan tinggi', 'Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis kinerja perangkan organisasi perguruan tinggi dan senantiasa dikembangkan / direvisi ', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (24, 1, 'Apakah perguruan tinggi anda memiliki prosedur penanganan keadaan darurat (contingency plan) bila terjadi gangguan pada sistem teknologi informasi dan komunikasi ?', 'Pengelolaan dan pengembangan', 'Tidak ada, semua berjalan secara naluri dan kebiasaan saja', 'Ada, dipergunakan sebagai panduan kerja namun tidak pernah dikaji dan dimutakhirkan', 'Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan', 'Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan, dan dipakai sebagai basis evaluasi kinerja', 'Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan, dan dipakai sebagai basis evaluasi kinerja serta penentuan remunerasi berdasarkan beban kerja dan ta', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (25, 1, 'Apakah tersedia pelayanan “help desk” untuk membantu para pengguna teknologi informasi dan komunikasi yang memiliki masalah ?', 'Pengelolaan dan pengembangan', 'Tidak tersedia', 'Tersedia, namun kinerjanya tidak seperti yang diharapkan', 'Tersedia dan beroperasi dengan baik pada jam kerja', 'Tersedia dan beroperasi dengan baik selama 24 jam sehari, kecuali hari libur atau Sabtu / Minggu', 'Tersedia dan beroperasi dengan baik selama 24 jam sehari, dan tujuh hari seminggu', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (26, 1, 'Apakah dilakukan proses audit terhadap efektivitas penerapan teknologi informasi dan komunikasi di lingkungan kampus ?', 'Pemantauan dan penilaian', 'Tidak sama sekali', 'Pada dasarnya dilakukan evaluasi secara umum, namun tidak berdasarkan prosedur baku audit', 'Ya, dilakukan audit oleh pihak internal yang berkepentingan dan memiliki kapabilitas', 'Ya, dilakukan audit oleh pihak eksternal yang berkepentingan dan memiliki kapabilitas', 'Ya, dilakukan audit oleh pihak internal dan eksternal secara independen dan bertanggung jawab', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (27, 1, 'Apakah perguruan tinggi memiliki indikator kinerja utama (Key Performance Indicator) dalam implementasi teknologi informasi dan komunikasi kampus ?', 'Pemantauan dan penilaian', 'Tidak ada, semuanya berjalan secara naluri dan kebiasaan', 'Ada, dipergunakan sebagai panduan kerja, namun tidak pernah dikaji maupun dimutakhirkan', 'Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan', 'Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja', 'Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja dan penentuan remunerasi berdasarkan beban kerja dan tangg', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (28, 2, 'Berapa persen kira-kira materi perkuliahan yang telah berbentuk file elektronik atau digital ?', 'Dosen dan peneliti', 'Dibawah 10%', 'Kira-kira antara 11%-25%', 'Kira-kira antara 26%-50%', 'Kira-kira antara 51%-75%', 'Kira-kira diatas 76%', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (29, 2, 'Berapa persen kira-kira materi perkuliahan yang dibawakan oleh dosen telah memanfaatkan dan melibatkan teknologi informasi dan komunikasi untuk mempermudah pemahaman mahasiswa sebagai peserta', 'Dosen dan peneliti', 'Dibawah 10%', 'Kira-kira antara 11%-25%', 'Kira-kira antara 26%-50%', 'Kira-kira antara 51%-75%', 'Kira-kira diatas 76%', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (30, 2, 'Berapa persen kira-kira jumlah mata kuliah yang telah dilakukan dengan menggunakan metode e-learning ?', 'Dosen dan peneliti', 'Tidak ada sama sekali', 'Kira-kira dibawah 10%', 'Kira-kira antara 11%-25%', 'Kira-kira antara 26%-50%', 'Kira-kira diatas 50%', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (31, 2, 'Berapa persen kira-kira jumlah mata kuliah dimana sang dosen memberikan pekerjaan rumah yang memaksa mahasiswanya untuk menggunakan teknologi informasi dan komunikasi secara intensif ?', 'Dosen dan peneliti', 'Tidak ada sama sekali', 'Kira-kira dibawah 10%', 'Kira-kira dibawah 10%', 'Kira-kira antara 26%-50%', 'Kira-kira diatas 50%', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (32, 2, 'Bagaimana tingkat literasi dosen dalam memanfaatkan berbagai aplikasi teknologi informasi dan komunikasi ?', 'Dosen dan peneliti', 'Rata-rata sangat rendah, karena kebanyakan masih gagap teknologi', 'Rata-rata cukup mahir menggunakan komputer, hanya saja kebanyakan diperuntukkan dalam mendukung kegiatan administratif (mengetik, mengirim email, membuat tabulasi, dan lain-lain)', 'Rata-rata cukup mahir dan menguasai berbagai aplikasi standar yang dipergunakan oleh seorang pengajar untuk mendukung aktivitasnya sehari-hari', 'Kebanyakan dosen telah sangat mahir dalam menggunakan beragam aplikasi standar maupun aplikasi termutakhir yang dikenal masyarakat umum', 'Mayoritas dosen telah sangat mahir dalam menggunakan beragam aplikasi standar maupun aplikasi termutakhir yang dikenal masyarakat umum, bahkan cenderung lebih tinggi tingkat  literasinya diba', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (33, 2, 'Apakah terjadi komunikasi yang intens antara dosen dan mahasiswa melalui kanal dan aplikasi teknologi informasi dan komunikasi seperti email, mailing list, newsgroup, social networking dan la', 'Dosen dan peneliti', 'Tidak sama sekali', 'Terjadi komunikasi virtual, namun tidak terlampau intensif', 'Terjadi komunikasi virtual yang cukup intensif', 'Hampir setiap hari rata-rata mahasiswa dan dosen melakukan interaksi secara virtual', 'Setiap hari mayoritas mahasiswa dan dosen melakukan interaksi secara virtual', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (34, 2, 'Berapa jumlah kelas yang pada saat diselenggarakan sang dosen membentuk sebuah mailing list khusus untuk para mahasiswa yang mengambil mata kuliah yang bersangkutan ?', 'Dosen dan peneliti', 'Dibawah 5% dari total kelas yang diikuti mahasiswa selama masa kuliah', 'Kira-kira antara 6%-15% dari total kelas yang diikuti mahasiswa selama masa kuliah', 'Kira-kira antara 16%-30% dari total kelas yang diikuti mahasiswa selama masa kuliah', 'Kira-kira antara 31%-60% dari total kelas yang diikuti mahasiswa selama masa kuliah', 'Diatas 6%-15% dari total kelas yang diikuti mahasiswa selama masa kuliah', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (35, 2, 'Berapa persen dari dosen yang memiliki alamat email yang aktif dipergunakan?', 'Dosen dan peneliti', 'Dibawah 10%', 'Kira-kira antara 11%-20%', 'Kira-kira antara 21%-50%', 'Kira-kira antara 51%-75%', 'Diatas antara 75%', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (36, 2, 'Berapa persen dari dosen yang memiliki website / homepage atau blog pribadi?', 'Dosen dan peneliti', 'Dibawah 10%', 'Kira-kira antara 11%-20%', 'Kira-kira antara 21%-50%', 'Kira-kira antara 51%-75%', 'Diatas antara 75%', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (37, 2, 'Rata-rata berapa jam dalam sehari seorang dosen berinteraksi dengan internet?', 'Dosen dan peneliti', 'Hanya dibawah 1 jam per hari', 'Kurang lebih antara 1-2 jam per hari', 'Kurang lebih antara 2-4 jam per hari', 'Kurang lebih antara 4-6 jam per hari', 'Hampir diatas 6 jam per hari', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (38, 2, 'Berapa persen dari mahasiswa yang memiliki alamat email yang aktif dipergunakan ?', 'Mahasiswa, unsur pemilik dan pimpinan', 'Dibawah 10%', 'Kira-kira antara 11%-20%', 'Kira-kira antara 21%-50%', 'Kira-kira antara 51%-75%', 'Diatas antara 75%', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (39, 2, 'Rata-rata berapa jam dalam sehari seorang mahasiswa berinteraksi dengan internet ?', 'Mahasiswa, unsur pemilik dan pimpinan', 'Hanya dibawah 1 jam per hari', 'Kurang lebih antara 1-2 jam per hari', 'Kurang lebih antara 2-4 jam per hari', 'Kurang lebih antara 4-6 jam per hari', 'Hampir diatas 6 jam per hari', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (40, 2, 'Berapa persen dari karyawan yang memiliki alamat email yang aktif dipergunakan ?', 'Manajemen, staf dan karyawan', 'Dibawah 10%', 'Kira-kira antara 11%-20%', 'Kira-kira antara 21%-50%', 'Kira-kira antara 51%-75%', 'Diatas antara 75%', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (41, 2, 'Bagaimana tingkat literasi karyawan dalam memanfaatkan berbagai aplikasi teknologi informasi dan komunikasi untuk membantu kegiatan administratif dan operasional kampus ?', 'Manajemen, staf dan karyawan', 'Rata-rata sangat rendah, karena kebanyakan masih “gagap teknologi”', 'Rata-rata cukup mahir menggunakan satu atau dua aplikasi komputer', 'Rata-rata cukup mahir dan menguasai sejumlah aplikasi komputer untuk kegiatan operasional organisasi', 'Kebanyakan karyawan telah mahir dan menguasai dan menggunakan berbagai aplikasi komputer perkantoran maupun penunjang lainnya', 'Mayoritas karyawan sangat mahir dalam memanfaatkan dan menggunakan beraneka ragam aplikasi teknologi dan komunikasi', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (42, 3, 'Apakah anda merasa keberadaan teknologi infomasi dan komunikasi akan memberikan manfaat dan kontribusi signifikan bagi perkembangan perguruan tinggi anda ?', 'Peningkatan kualitas', 'Ya, keberadaannya akan memberikan kontribusi positif namun tidak signifikan', 'Ya, keberadaannya akan memberikan kontribusi positif, namun signifikan tidaknya bergantung dari sudut pandang yang dipergunakan', 'Ya keberadaan akan memberikan kontribusi positif dan signifikan bagi perguruan tinggi ', 'Ya keberadaan akan memberikan kontribusi positif dan signifikan bagi perguruan tinggi bahkan dapat meningkatkan daya saing jika direncanakan dan diterapkan dengan benar', 'Ya keberadaan akan memberikan kontribusi positif dan signifikan bagi perguruan tinggi dan sanggup mentransformasikan situasi dan kondisi perguruan tinggi ke arah modernisasi kampus', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (43, 3, 'Apakah ada kontribusi nyata terkait dengan teknologi informasi dan komunikasi dalam hal peningkata kualitas pengambilan keputusan para pembuat kebijakan di perguruan tinggi anda dalam 5 tahun', 'Peningkatan kualitas', 'Tidak ada kontribusi yang signifikan', 'Ada sejumlah kontribusi positif, namun tidak signifikan', 'Ada kontribusi positif dan cukup signifikan', 'Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya', 'Jelas terlihat adanya kontribusi yang positif dan signifikan dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi para mahasiswa', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (44, 3, 'Apakah ada kontribusi nyata terkait dengan teknologi informasi dan komunikasi dalam hal peningkatan kualitas pelayanan di kalangan para mahasiswa di perguruan tinggi anda dalam 5 tahun terakh', 'Peningkatan kualitas', 'Tidak ada kontribusi yang signifikan', 'Ada sejumlah kontribusi positif, namun tidak signifikan', 'Ada kontribusi positif dan cukup signifikan', 'Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya', 'Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi para mahasiswa/i', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (45, 3, 'Apakah ada kontribusi teknologi informasi dan komunikasi dalam hal peningkatan peran perguruan tinggi dalam konteks nasional dalam 5 taun terakhir ?', 'Peningkatan kualitas', 'Tidak ada kontribusi yang signifikan', 'Ada kontribusi positif, namun tidak signifikan', 'Ada kontribusi positif dan cukup signifikan', 'Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya', 'Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi pemerintah', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (46, 3, 'Apakah pernah mendapatkan penghargaan dari lembaga-lembaga lain, dari luar maupun dalam negeri terkait dengan perkembangan teknologi informasi dan komunikasi di perguruan tinggi anda ?', 'Peningkatan kualitas', 'Pernah, memperoleh 1 penghargaan dalam 10 tahun terakhir', 'Pernah, memperoleh 2-3 penghargaan dalam 10 tahun terakhir', 'Pernah, memperoleh 4-5 penghargaan dalam 10 tahun terakhir', 'Pernah, memperoleh 6-10 penghargaan dalam 10 tahun terakhir', 'Pernah, memperoleh lebih dari 10 penghargaan dalam 10 tahun terakhir', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (47, 3, 'Apakah ada kontribusi nyata terkait dengan teknologi informasi dan komunikasi dalam hal peningkatan kualitas pengetahuan dan kompetensi mahasiswa/i di berbagai jurusan dalam 5 tahun terakhir ', 'Peningkatan kualitas', 'Tidak ada kontribusi yang signifikan', 'Ada sejumlah kontribusi positif, namun tidak signifikan', 'Ada kontribusi positif dan cukup signifikan', 'Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya', 'Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi mahasiswa/i', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (48, 3, 'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan kualitas pengetahuan dan kompetensi mahasiswa/i dari berbagai jurusan di perguruan tingg anda dala', 'Peningkatan kualitas', 'Tidak ada kontribusi yang signifikan', 'Ada sejumlah kontribusi positif, namun tidak signifikan', 'Ada kontribusi positif dan cukup signifikan', 'Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya', 'Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi mahasiswa/i', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (49, 3, 'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan, efisiensi operasional penyelenggaraan perguruan tinggi anda dalam 5 tahun terakhir ?', 'Efektivitas dan efisiensi', 'Tidak ada kontribusi yang signifikan', 'Ada sejumlah kontribusi positif, namun tidak signifikan', 'Ada kontribusi positif dan cukup signifikan', 'Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya', 'Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi perguruan tinggi', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (50, 3, 'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan pendapatan perguruan tinggi dalam 5 tahun terakhir ?', 'Efektivitas dan efisiensi', 'Tidak ada kontribusi yang signifikan', 'Ada sejumlah kontribusi positif, namun tidak signifikan', 'Ada kontribusi positif dan cukup signifikan', 'Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya', 'Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi perguruan tinggi', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (51, 3, 'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal perbaikan pegawai perguruan tinggi yang bersih, akuntabel dan transparan dalam 5 tahun terakhir ?', 'Transparansi manajemen', 'Tidak ada kontribusi yang signifikan', 'Ada sejumlah kontribusi positif, namun tidak signifikan', 'Ada kontribusi positif dan cukup signifikan', 'Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya', 'Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi manajemen', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (52, 3, 'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan optimalisasi pemanfaatan berbagai sumber daya yang dimiliki perguruan tinggi anda dalam 5 tahun te', 'Utilitas sumber daya', 'Tidak ada kontribusi yang signifikan', 'Ada sejumlah kontribusi positif, namun tidak signifikan', 'Ada kontribusi positif dan cukup signifikan', 'Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya', 'Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi perguruan tinggi', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (53, 3, 'Menurut pendapat anda, apa peranan dan target utama penerapan teknologi informasi dan komunikasi di perguruan tinggi anda ?', 'Transformasi organisasi', 'Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat', 'Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat serta meningkatkan kerja operasional pelayanan', 'Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat serta meningkatkan kerja operasional pelayanan dan membantu proses pengambilan keputusan yang efektif', 'Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat, meningkatkan kerja operasional pelayanan, membantu proses pengambilan keputusan yang efektif dan memastikan terjadiny', 'Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat, meningkatkan kerja operasional pelayanan, membantu proses pengambilan keputusan yang efektif dan memastikan terjadiny', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (54, 4, 'Apakah kebijakan perguruan tinggi memperbolehkan penyelenggaraan mata kuliah berbasis e-learing ?', 'Implementasi e-learning', 'Tidak diperbolehkan sama sekali', 'Diperbolehkan, namun tetap harus dicampur denga model pembelajaran klasik (tatap muka)', 'Diperbolehkan sesuai dengan peraturan Kemdiknas / Dikti yang ada', 'Diperbolehkan bahkan dianjurkan untuk dilaksanakan oleh segenap dosen pengajar', 'Diperbolehkan bahkan  dianjurkan untuk sejumlah dosen melaksanakan sesuai dengan pengembangan yang direncanakan', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (55, 4, 'Apakah pimpinan memberikan himbauan akan pentingnya antara dosen pengajar saling berbagi pakai (sharing) materi perkuliahan dan pengetahuan yang dimilikinya ?', 'Berbagai sumber daya', 'Tidak diberikan himbauan', 'Diberikan himbauan secara informal', 'Secara resmi pimpinan senantiasa memberikan himbauan tersebut dalam berbagai kesempatan formal', 'Terdapat surat keputusan dari pihak pimpinan yang mengharuskan para dosen untuk saling berbagi pengetahuan dan materi ajar yang dimilikinya', 'Terdapat surat keputusan dari pihak pimpinan yang mengharuskan para dosen untuk saling berbagi pengetahuan dan materi ajar yang dimilikinya dan dijadikan alat ukur kinerja dosen', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (56, 4, 'Apakah perguruan tinggi anda menyediakan fasilitas teknologi untuk menunjang proses berbagi materi ajar antar dosen?', 'Berbagai sumber daya', 'Ya, namun jarang sekali dipergunakan oleh dosen', 'Ya, namun hanya beberapa dosen saja yang aktif berbagi materi ajar', 'Ya dan rata-rata dosen saling berbagi materi ajar antar sesamanya', 'Ya dan kira-kira lebih dari 50% telah secara aktif saling berbagi materi ahar', 'Ya hampir semua dosen saling aktif berbagi materi ajar diantara sesamanya', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (57, 4, 'Berapa banyak yang mengunjungi website perguruan tinggi sehari-hari (per idetitas unik) ?', 'Berbagai sumber daya', 'Mungkin kira-kira dibawah 100 hits per hari', 'Kira-kira antara 101 – 1000 hits per hari', 'Kira-kira antara 1001 – 10.000 hits per hari', 'Kira-kira antara 10.001 – 100.000 hits per hari', 'Diatas 100.000 hits per hari', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (58, 4, 'Berdasarkan rekam jejak, fitur website perguruan tinggi apa yang paling banyak dimanfaatkan oleh pengunjung ?', 'Berbagai sumber daya', 'Tidak jelas, karena tidak ada catatannya', 'Fitur navigasi umum untuk mencari informasi', 'Fitur navigasi umum untuk mencari informasi dan berinteraksi dengan pihak perguruan tinggi', 'Fitur “searching “ untuk mencari dan mengunduh dokumen / artikel penting yang dimiliki perguruan tinggi', 'Fitur aplikasi yang menungkinkan pengunjung untuk turut berpartisipasi dalam berbagai program perguruan tinggi berbasis virtual (e-learning, webcast, knowledge simulationm smart campus dan la', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (59, 4, 'Apakah pimpinan menganjurkan agar para dosen mengunggah berbagai hasil karyanya ke internet ?', 'Pendidikan terbuka', 'Tidak menganjurkan sama sekali', 'Menganjurkan hanya untuk artikel tertentu saja', 'Menganjurkan untuk semua karya yang dimiliki dengan tetap memperhatikan unsur HAKI yang dimiliki', 'Mengharuskan para dosen untuk sebanyak mungkin meng-upload hasil karyanya ke internet', 'Mengharuskan para dosen untuk sebanyak mungkin meng-upload hasil karyanya ke internet dan dijadikan sebagai bagian dari penilaian kinerja dosen', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (60, 4, 'Apakah pimpinan dan segenap dosen perguruan tinggi mengetahui akan adanya model HAKI bernama “creative common” ?', 'Pendidikan terbuka', 'Tidak mengetahui sama sekali', 'Pernah mendengar, namun tidak tahu persis artinya', 'Tahu mengenai keberadaannya dan mengerti maksudnya', 'Tahu mengenai keberadaannya, mengerti maksudnya dan telah dipergunakan sejumlah dosen perguruan tinggi', 'Tahu mengenai keberadaannya, mengerti maksudnya dan secara masif telah dipergunakan sejumlah dosen perguruan tinggi', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (61, 4, 'Berapa banyak materi perkuliahan dosen yang diberikan secara terbuka dan gratis kepada publik ', 'Pendidikan terbuka', 'Tidak ada sama sekali', 'Dibawah 10% dari total mata kuliah', 'Kira-kira antara 11%-25% dari total mata kuliah', 'Kira-kira antara 26%-50% dari total mata kuliah', 'Diatas 50% dari total mata kuliah', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (62, 4, 'Apakah perguruan tinggi menjadi salah satu penggiat atau peserta forum / asosiasi Open Course Ware (OCW)', 'Pendidikan terbuka', 'Tidak ada sama sekali', 'Berencana untuk menjadi anggotanya dalam waktu dekat', 'Menjadi penggiat dan anggota aktif dari perkumpulan Open Course Ware (OCW)', 'Menjadi penggiat dan anggota aktif dan sekaligus pengurus Open Course Ware (OCW) di sejumlah tempat', 'Menjadi inisiator sekaligus pemimpin gerakan Open Course Ware (OCW) di sejumlah wilayah', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (63, 4, 'Bagaimana model pengelolaan sistem informasi internal terkait dengan kewajiban melaporkan status kampus melalui sistem informasi PDPT (Pangkalan Data Perguruan Tinggi) ?', 'Pangkalan data terpadu', 'Perguruan tinggi tidak memiliki sistem informasi internal', 'Keduanya merupakan sistem yang berdiri sendiri, tidak berhubungan', 'Sistem informasi dirancang sedemikian rupa sehingga menghasilkan output sebagaimana format file PDPT', 'Dikti dapat secara langsung mengambil file (mengunduh) dari hasil keluaran sistem informasi internal yang formatnya sesuai dengan PDPT melalui website perguruan tinggi', 'Kedua sistem sudah terintegrasi', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (64, 4, 'Apakah sistem informasi akademik perguruan tinggi dapat diakses melalui website oleh pihak luar ?', 'Pangkalan data terpadu', 'Tidak dapat sama sekali', 'Dapat diakses hanya untuk dosen atau mahasiswa aktif (alumni) perguruan tinggi', 'Dapat diakses oleh berbagai pihak sesuai dengan hak otoritasnya masing-masing', 'Dapat diakses oleh berbagai pihak yang membutuhkan data/informasi mengenai dosen, mahasiswa, mata kuliah, materi ajar, pustaka internal dan lain-lain, dimana sistem mencatat keseluruhan model', 'Dapat diakses oleh berbagai pihak luar untuk mendapatkan informasi / data yang dibutuhkan disamping itu dapat dilakukan berbagai query atau searching terhadap kumpulan basis data yang dimilik', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (65, 4, 'Apakah perguruan tinggi memiliki jejaring ke institusi pendidikan atau penelitian lain di luar negeri ?', 'Jejaring internasional', 'Tidak ada', 'Sedang menjajaki kerjasama dengan pihak luar negeri', 'Memiliki jejaring ke sejumlah lembaga atau institusi lain di luar negeri', 'Memiliki jejaring ke sejumlah institusi lain di luar negeri yang memungkinkan dosen untuk saling mengakses sumber-sumber pembelajaran dari pihak mitra', 'Memiliki jejaring ke sejumlah institusi lain di luar negeri yang memungkinkan dosen dan mahasiswa untuk saling mengakses sumber-sumber pembelajaran dari pihak mitra', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (66, 4, 'Apakah perguruan tinggi anda mendapatkan dukungan dan bantuan sumber daya maupun asistensi dari pihak ketiga (lembaga internasional) yang berasal dari luar negeri ?', 'Jejaring internasional', 'Tidak ada', 'Ada, namun sangat jarang sekali (satu dalam 3-5 tahun)', 'Ada, namun berupa bantuan kecil paling tidak setahun sekali', 'Ada, jumlah bantuannya cukup besar dan diterima secara berkesinambungan', 'Ada, jumlah bantuannya besar dan diterima secara kontinyu serta berkesinambungan', NULL, NULL);
INSERT INTO `pertanyaans` VALUES (67, 1, 'apakah', 'komitmen pimpinan', 'apakah', 'apakah', 'apakah', 'apakah', 'apakah', NULL, NULL);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'administrator', '2023-10-22 17:11:28', '2023-10-22 17:11:31');
INSERT INTO `roles` VALUES (2, 'dekan', '2023-10-22 17:11:28', '2023-10-22 17:11:31');
INSERT INTO `roles` VALUES (3, 'kepala puskom', '2023-10-22 17:11:28', '2023-10-22 17:11:28');
INSERT INTO `roles` VALUES (4, 'kaprodi ti', '2023-10-22 17:11:28', '2023-10-22 17:11:28');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  INDEX `users_role_id_foreign`(`role_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@gmail.com', NULL, '$2a$12$m39moZ6V29S36TicAIpzn.ScJw1T27tAlj9rooWyBwT1N3ouW.c2e', NULL, '2023-10-22 17:11:35', '2023-10-22 17:11:38', 1);
INSERT INTO `users` VALUES (2, 'alec', 'alec@gmail.com', NULL, '$2a$12$8vVVb/KGny/znB3Qq0PECebmJr.QSZd7gZ4yYysNWbb/zcATILFHK', NULL, '2023-10-22 17:11:35', '2023-10-22 17:11:35', 2);
INSERT INTO `users` VALUES (3, 'sandy', 'sandy@gmail.com', NULL, '$2a$12$pDa1J7a2gRJWQb60W8xkIO0uFzQlj/5Xb4DaLAo9Kp/XRkt0L.hWO', NULL, '2023-10-22 17:11:35', '2023-10-22 17:11:35', 3);
INSERT INTO `users` VALUES (4, 'toni', 'toni@gmail.com', NULL, '$2a$12$pDa1J7a2gRJWQb60W8xkIO0uFzQlj/5Xb4DaLAo9Kp/XRkt0L.hWO', NULL, '2023-10-22 17:11:35', '2023-10-22 17:11:35', 3);
INSERT INTO `users` VALUES (5, 'victor', 'victor@gmail.com', NULL, '$2a$12$4270XFrMTvxmuJRX0G7DGuHVZUo6WRweox/5.q43lMecewVITFU5O', NULL, '2023-10-22 17:11:35', '2023-10-22 17:11:35', 4);
INSERT INTO `users` VALUES (6, 'arif', 'arif@gmail.com', NULL, '$2a$12$4270XFrMTvxmuJRX0G7DGuHVZUo6WRweox/5.q43lMecewVITFU5O', NULL, '2023-10-22 17:11:35', '2023-10-22 17:11:35', 4);

-- ----------------------------
-- Table structure for variabels
-- ----------------------------
DROP TABLE IF EXISTS `variabels`;
CREATE TABLE `variabels`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `variabel` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of variabels
-- ----------------------------
INSERT INTO `variabels` VALUES (1, 'Komitmen pimpinan', NULL, NULL);
INSERT INTO `variabels` VALUES (2, 'Alokasi sumber daya', NULL, NULL);
INSERT INTO `variabels` VALUES (3, 'Unit pengelola teknologi', NULL, NULL);
INSERT INTO `variabels` VALUES (4, 'Kebijakan dan sistem insentif', NULL, NULL);
INSERT INTO `variabels` VALUES (5, 'Renstra dan peta jalan', NULL, NULL);
INSERT INTO `variabels` VALUES (6, 'Perencanaan dan pengorganisasian', NULL, NULL);
INSERT INTO `variabels` VALUES (7, 'Pengadaan dan penerapan', NULL, NULL);
INSERT INTO `variabels` VALUES (8, 'Pengelolaan dan pengembangan', NULL, NULL);
INSERT INTO `variabels` VALUES (9, 'Pemantauan dan penilaian', NULL, NULL);
INSERT INTO `variabels` VALUES (10, 'Dosen dan peneliti', NULL, NULL);
INSERT INTO `variabels` VALUES (11, 'Mahasiswa, unsur pemilik dan pimpinan', NULL, NULL);
INSERT INTO `variabels` VALUES (12, 'Manajemen, staf dan karyawan', NULL, NULL);
INSERT INTO `variabels` VALUES (13, 'Peningkatan kualitas', NULL, NULL);
INSERT INTO `variabels` VALUES (14, 'Efektivitas dan efisiensi', NULL, NULL);
INSERT INTO `variabels` VALUES (15, 'Transparansi manajemen', NULL, NULL);
INSERT INTO `variabels` VALUES (16, 'Utilitas sumber daya', NULL, NULL);
INSERT INTO `variabels` VALUES (17, 'Transformasi organisasi', NULL, NULL);
INSERT INTO `variabels` VALUES (18, 'Implementasi e-learning', NULL, NULL);
INSERT INTO `variabels` VALUES (19, 'Berbagai sumber daya', NULL, NULL);
INSERT INTO `variabels` VALUES (20, 'Pendidikan terbuka', NULL, NULL);
INSERT INTO `variabels` VALUES (21, 'Pangkalan data terpadu', NULL, NULL);
INSERT INTO `variabels` VALUES (22, 'Jejaring internasiona', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
