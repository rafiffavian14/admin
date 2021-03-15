/*
 Navicat Premium Data Transfer

 Source Server         : Profile PNS
 Source Server Type    : PostgreSQL
 Source Server Version : 130001
 Source Host           : 202.125.94.151:7777
 Source Catalog        : db_profilepns
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130001
 File Encoding         : 65001

 Date: 22/12/2020 19:04:25
*/


-- ----------------------------
-- Table structure for honorer
-- ----------------------------
DROP TABLE IF EXISTS "public"."honorer";
CREATE TABLE "public"."honorer" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pendidikan_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pendidikan_tertinggi_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "instansi_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nip_hn" varchar(20) COLLATE "pg_catalog"."default",
  "tmt_tahun" numeric(2),
  "tmt_bulan" numeric(2),
  "unor_id" varchar(32) COLLATE "pg_catalog"."default",
  "tahun_lulus_pddk_awal" numeric(4),
  "tahun_lulus_pddk_ttg" numeric(4),
  "tmt_cptahun" numeric(2),
  "tmt_cpbulan" numeric(2),
  "cp_nama" varchar(40) COLLATE "pg_catalog"."default",
  "cp_tgl_lhr" timestamp(6),
  "alasan_btl_tms" varchar(100) COLLATE "pg_catalog"."default",
  "satuan_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "usul_pengadaan_id" varchar(32) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(6),
  "kabupaten_hn_id" varchar(32) COLLATE "pg_catalog"."default",
  "tingkat_pendidikan_id" varchar(2) COLLATE "pg_catalog"."default",
  "nama_hn" varchar(50) COLLATE "pg_catalog"."default",
  "tgl_lhr_hn" timestamp(6),
  "status_hn" varchar(1) COLLATE "pg_catalog"."default",
  "jabatan_fungsional_umum_id" varchar(32) COLLATE "pg_catalog"."default",
  "ujian" varchar(5) COLLATE "pg_catalog"."default",
  "alasan_ujian" varchar(255) COLLATE "pg_catalog"."default",
  "tahun" numeric(4),
  "cek_status" numeric(1),
  "tingkat_pendidikan_nama" jsonb,
  "instansi_nama" jsonb,
  "jabatan_fungsional_umum_nama" jsonb,
  "kabupaten_hn_nama" jsonb,
  "pendidikan_tertinggi_nama" jsonb,
  "pendidikan_nama" jsonb,
  "satuan_kerja_nama" jsonb,
  "unor_nama" jsonb,
  "usul_pengadaan_nama" jsonb
)
;
COMMENT ON COLUMN "public"."honorer"."id" IS 'Menampung id pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."pendidikan_id" IS 'menampung data id pendidikan yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."pendidikan_tertinggi_id" IS 'menampung data id pendidikan yang merupakan pendidikan tertinggi';
COMMENT ON COLUMN "public"."honorer"."instansi_id" IS 'menampung data id instansi yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."nip_hn" IS 'menampung data nip pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tmt_tahun" IS 'menghimpun data terhitung mulai tanggal tahun yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tmt_bulan" IS 'menampung data ';
COMMENT ON COLUMN "public"."honorer"."unor_id" IS 'menampung data id unor yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tahun_lulus_pddk_awal" IS 'menampung data tahun_lulus_pddk_awal pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tahun_lulus_pddk_ttg" IS 'menampung data tahun_lulus_pddk_ttg pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tmt_cptahun" IS 'menghimpun data terhitung mulai tanggal cptahun yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tmt_cpbulan" IS 'menghimpun data terhitung mulai tanggal cpbulan yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."cp_nama" IS 'menampung data nama cpns pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."cp_tgl_lhr" IS 'menampung data tanggal lahir cpns pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."alasan_btl_tms" IS 'menampung data alasan_btl_tms yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."satuan_kerja_id" IS 'menampung data id satuan_kerja yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."usul_pengadaan_id" IS 'menampung data id usul_pengadaan yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel honorer';
COMMENT ON COLUMN "public"."honorer"."kabupaten_hn_id" IS 'menampung data id kabupaten_hn yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tingkat_pendidikan_id" IS 'menampung data id tingkat_pendidikan yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."nama_hn" IS 'menampung data nama pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tgl_lhr_hn" IS 'menampung data tanggal lahir honorer pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."status_hn" IS 'menampung data status pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."jabatan_fungsional_umum_id" IS 'menampung data id jabatan_fungsional_umum yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."ujian" IS 'menampung data ujian pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."alasan_ujian" IS 'menampung data alasan_ujian yang ada pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tahun" IS 'menampung data tahun pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."cek_status" IS 'menampung data pengecekan status pada tabel honorer';
COMMENT ON COLUMN "public"."honorer"."tingkat_pendidikan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai tingkat pendidikan. merefer ke tabel tingkat_pendidikan';
COMMENT ON COLUMN "public"."honorer"."instansi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai instansi subjek yang bersangkutan, ref dari tabel instansi';
COMMENT ON COLUMN "public"."honorer"."jabatan_fungsional_umum_nama" IS 'kolom hasil denormalisasi yang menyimpan infromasi jabatan fungsional umum, merefer ke tabel jabatan_fungsional_umum';
COMMENT ON COLUMN "public"."honorer"."kabupaten_hn_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi tempat lahir subjek yang bersangkutan. merefer ke tabel lokasi';
COMMENT ON COLUMN "public"."honorer"."pendidikan_tertinggi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pendidikan tertinggi, merefer ke tabel pendidikan';
COMMENT ON COLUMN "public"."honorer"."pendidikan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pendidikan, merefer ke tabel pendidikan';
COMMENT ON COLUMN "public"."honorer"."satuan_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."honorer"."unor_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi. merefer ke tabel unor';
COMMENT ON COLUMN "public"."honorer"."usul_pengadaan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai usul pengadaan. merefer ke tabel usul';

-- ----------------------------
-- Records of honorer
-- ----------------------------

-- ----------------------------
-- Table structure for non_pns
-- ----------------------------
DROP TABLE IF EXISTS "public"."non_pns";
CREATE TABLE "public"."non_pns" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nik" varchar(18) COLLATE "pg_catalog"."default" NOT NULL,
  "no_kk" varchar(20) COLLATE "pg_catalog"."default",
  "nama_ktp" varchar(500) COLLATE "pg_catalog"."default",
  "nama_ijazah" varchar(500) COLLATE "pg_catalog"."default",
  "no_validasi" varchar(20) COLLATE "pg_catalog"."default",
  "tempat_lahir_ktp" varchar(20) COLLATE "pg_catalog"."default",
  "tempat_lahir_ijazah" varchar(32) COLLATE "pg_catalog"."default",
  "tgl_lahir_ktp" timestamp(6),
  "tgl_lahir_ijazah" timestamp(6),
  "jenis_kelamin" varchar(1) COLLATE "pg_catalog"."default",
  "email" varchar(100) COLLATE "pg_catalog"."default",
  "alamat_ktp" varchar(500) COLLATE "pg_catalog"."default",
  "alamat" varchar(500) COLLATE "pg_catalog"."default",
  "no_hp" varchar(20) COLLATE "pg_catalog"."default",
  "no_telp" varchar(20) COLLATE "pg_catalog"."default",
  "instansi_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "satuan_kerja_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "unor_id" varchar(32) COLLATE "pg_catalog"."default",
  "pendidikan_id" varchar(32) COLLATE "pg_catalog"."default",
  "jenis_jabatan_id" numeric(1),
  "jabatan" varchar(32) COLLATE "pg_catalog"."default",
  "tmt_bekerja" timestamp(6),
  "pembayaran" varchar(2) COLLATE "pg_catalog"."default",
  "status" varchar(1) COLLATE "pg_catalog"."default",
  "status_lengkap" varchar(1) COLLATE "pg_catalog"."default",
  "keterangan" varchar(100) COLLATE "pg_catalog"."default",
  "created_by" varchar(32) COLLATE "pg_catalog"."default",
  "created_date" varchar(20) COLLATE "pg_catalog"."default",
  "updated_by" varchar(32) COLLATE "pg_catalog"."default",
  "updated_date" varchar(20) COLLATE "pg_catalog"."default",
  "validate_by" varchar(32) COLLATE "pg_catalog"."default",
  "validate_date" varchar(20) COLLATE "pg_catalog"."default",
  "jenis_kelamin_ijazah" varchar(1) COLLATE "pg_catalog"."default",
  "instansi_kerja_nama" jsonb,
  "satuan_kerja_kerja_nama" jsonb,
  "unor_nama" jsonb,
  "pendidikan_nama" jsonb,
  "jenis_jabatan_nama" varchar(255) COLLATE "pg_catalog"."default",
  "isntansi_kerja_nama" jsonb
)
;
COMMENT ON COLUMN "public"."non_pns"."id" IS 'Menampung id pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."nik" IS 'menampung data nik pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."no_kk" IS 'menampung data no_kk pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."nama_ktp" IS 'menampung data nama_ktp pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."nama_ijazah" IS 'menampung data nama_ijazah pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."no_validasi" IS 'menampung data no_validasi pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."tempat_lahir_ktp" IS 'menampung data tempat_lahir_ktp pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."tempat_lahir_ijazah" IS 'menampung data tempat_lahir_ijazah pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."tgl_lahir_ktp" IS 'menampung data tanggal lahir_ktp pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."tgl_lahir_ijazah" IS 'menampung data tanggal lahir_ijazah pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."jenis_kelamin" IS 'menampung data jenis_kelamin pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."email" IS 'menampung data email pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."alamat_ktp" IS 'menampung data alamat_ktp pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."alamat" IS 'menampung data alamat pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."no_hp" IS 'menampung data no_hp pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."no_telp" IS 'menampung data no_telp pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."instansi_kerja_id" IS 'menampung data id instansi_kerja yang ada pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."satuan_kerja_kerja_id" IS 'menampung data id satuan_kerja_kerja yang ada pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."unor_id" IS 'menampung data id unor yang ada pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."pendidikan_id" IS 'menampung data id pendidikan yang ada pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."jenis_jabatan_id" IS 'menampung data id jenis_jabatan yang ada pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."jabatan" IS 'menampung data jabatan pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."tmt_bekerja" IS 'menampung data terhitung mulai tanggal bekerja pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."pembayaran" IS 'menampung data pembayaran pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."status" IS 'menampung data status pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."status_lengkap" IS 'menampung data status_lengkap pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."keterangan" IS 'menampung data keterangan pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."created_by" IS 'menampung data orang yang membuat record pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."created_date" IS 'menampung data tanggal pembuatan pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."updated_by" IS 'menampung data updated data pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."updated_date" IS 'menampung data tanggal updated pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."validate_by" IS 'menampung data validasi data pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."validate_date" IS 'menampung data tanggal validate pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."jenis_kelamin_ijazah" IS 'menampung data jenis_kelamin_ijazah pada tabel non_pns';
COMMENT ON COLUMN "public"."non_pns"."instansi_kerja_nama" IS 'menyimpan informasi dari tabel instansi';
COMMENT ON COLUMN "public"."non_pns"."satuan_kerja_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."non_pns"."unor_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi. merefer ke tabel unor';
COMMENT ON COLUMN "public"."non_pns"."pendidikan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pendidikan, merefer ke tabel pendidikan';
COMMENT ON COLUMN "public"."non_pns"."jenis_jabatan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis jabatan, merefer ke tabel jenis_jabatan';
COMMENT ON COLUMN "public"."non_pns"."isntansi_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi kerja dari tabel instansi';

-- ----------------------------
-- Records of non_pns
-- ----------------------------

-- ----------------------------
-- Table structure for orang
-- ----------------------------
DROP TABLE IF EXISTS "public"."orang";
CREATE TABLE "public"."orang" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "kabupaten_id" varchar(32) COLLATE "pg_catalog"."default",
  "jenis_id_dokumen_id" varchar(1) COLLATE "pg_catalog"."default",
  "jenis_kawin_id" varchar(1) COLLATE "pg_catalog"."default",
  "tingkat_pendidikan_id" varchar(2) COLLATE "pg_catalog"."default",
  "agama_id" varchar(1) COLLATE "pg_catalog"."default",
  "ibu_id" varchar(32) COLLATE "pg_catalog"."default",
  "ayah_id" varchar(32) COLLATE "pg_catalog"."default",
  "nama" varchar(55) COLLATE "pg_catalog"."default" NOT NULL,
  "gelar_depan" varchar(25) COLLATE "pg_catalog"."default",
  "gelar_blk" varchar(30) COLLATE "pg_catalog"."default",
  "tgl_lhr" date,
  "jenis_kelamin" varchar(1) COLLATE "pg_catalog"."default",
  "nomor_id_document" varchar(30) COLLATE "pg_catalog"."default",
  "akta_meninggal" varchar(40) COLLATE "pg_catalog"."default",
  "tgl_meninggal" date,
  "status_hidup" bool,
  "nomor_hp" varchar(40) COLLATE "pg_catalog"."default",
  "nomor_telpon" varchar(40) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "akta_kelahiran" varchar(30) COLLATE "pg_catalog"."default",
  "ket_sehat_tanggal" date,
  "ket_sehat_dokter" varchar(40) COLLATE "pg_catalog"."default",
  "ket_sehat_institusi" varchar(50) COLLATE "pg_catalog"."default",
  "ket_bebas_narkoba_nomor" varchar(50) COLLATE "pg_catalog"."default",
  "ket_bebas_narkoba_tanggal" date,
  "ket_kelakuanbaik_nomor" varchar(50) COLLATE "pg_catalog"."default",
  "ket_kelakuanbaik_tanggal" date,
  "alamat" varchar(150) COLLATE "pg_catalog"."default",
  "kode_pos" varchar(15) COLLATE "pg_catalog"."default",
  "tgl_lhr_palsu" bool NOT NULL,
  "calon_pengadaan" bool,
  "mk_fiktif_tahun" int4,
  "mk_fiktif_bulan" int4,
  "npwp_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "npwp_tanggal" date,
  "karis_karsu" varchar(30) COLLATE "pg_catalog"."default",
  "jenis_anak_id" varchar(1) COLLATE "pg_catalog"."default",
  "anak_tanggungan" varchar(1) COLLATE "pg_catalog"."default",
  "hak_pensiun" bool,
  "ncsistime" timestamp(0),
  "bpjs" varchar(50) COLLATE "pg_catalog"."default",
  "sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "pendidikan_id" varchar(32) COLLATE "pg_catalog"."default",
  "tanggal_lulus" date,
  "sekolah_id" varchar(32) COLLATE "pg_catalog"."default",
  "nama_ktp" varchar(50) COLLATE "pg_catalog"."default",
  "faskes_bpjs" varchar(20) COLLATE "pg_catalog"."default",
  "kelas_bpjs" int4,
  "status_sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "no_kk" varchar(30) COLLATE "pg_catalog"."default",
  "jenis_id_dokumen_nama" varchar(255) COLLATE "pg_catalog"."default",
  "jenis_kawin_nama" jsonb,
  "tingkat_pendidikan_nama" jsonb,
  "agama_nama" varchar(255) COLLATE "pg_catalog"."default",
  "jenis_anak_nama" varchar(255) COLLATE "pg_catalog"."default",
  "pendidikan_nama" jsonb,
  "kabupaten_nama" jsonb
)
;
COMMENT ON COLUMN "public"."orang"."id" IS 'Menampung id pada tabel orang';
COMMENT ON COLUMN "public"."orang"."kabupaten_id" IS 'menampung data id kabupaten yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."jenis_id_dokumen_id" IS 'menampung data id jenis_dokumen yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."jenis_kawin_id" IS 'menampung data id jenis_kawin yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."tingkat_pendidikan_id" IS 'menampung data id tingkat_pendidikan yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."agama_id" IS 'menampung data id agama yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ibu_id" IS 'menampung data id ibu yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ayah_id" IS 'menampung data id ayah yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."nama" IS 'menampung data nama pada tabel orang';
COMMENT ON COLUMN "public"."orang"."gelar_depan" IS 'menampung data gelar depan pada tabel orang';
COMMENT ON COLUMN "public"."orang"."gelar_blk" IS 'menampung data gelar belakang pada tabel orang';
COMMENT ON COLUMN "public"."orang"."tgl_lhr" IS 'menampung data tanggal lahir pada tabel orang';
COMMENT ON COLUMN "public"."orang"."jenis_kelamin" IS 'menampung data jenis_kelamin pada tabel orang';
COMMENT ON COLUMN "public"."orang"."nomor_id_document" IS 'menampung data id nomor_document yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."akta_meninggal" IS 'menampung data akta_meninggal pada tabel orang';
COMMENT ON COLUMN "public"."orang"."tgl_meninggal" IS 'menampung data tanggal meninggal pada tabel orang';
COMMENT ON COLUMN "public"."orang"."status_hidup" IS 'menampung data status_hidup pada tabel orang';
COMMENT ON COLUMN "public"."orang"."nomor_hp" IS 'menampung data nomor_hp pada tabel orang';
COMMENT ON COLUMN "public"."orang"."nomor_telpon" IS 'menampung data nomor_telpon pada tabel orang';
COMMENT ON COLUMN "public"."orang"."email" IS 'menampung data email pada tabel orang';
COMMENT ON COLUMN "public"."orang"."akta_kelahiran" IS 'menampung data akta_kelahiran pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ket_sehat_tanggal" IS 'menampung data tanggal ket_sehat pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ket_sehat_dokter" IS 'menampung data keterangan sehat_dokter pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ket_sehat_institusi" IS 'menampung data keterangan sehat_institusi pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ket_bebas_narkoba_nomor" IS 'menampung data keterangan bebas_narkoba_nomor pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ket_bebas_narkoba_tanggal" IS 'menampung data tanggal ket_bebas_narkoba pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ket_kelakuanbaik_nomor" IS 'menampung data keterangan kelakuanbaik_nomor pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ket_kelakuanbaik_tanggal" IS 'menampung data tanggal ket_kelakuanbaik pada tabel orang';
COMMENT ON COLUMN "public"."orang"."alamat" IS 'menampung data alamat pada tabel orang';
COMMENT ON COLUMN "public"."orang"."kode_pos" IS 'menampung data kode_pos pada tabel orang';
COMMENT ON COLUMN "public"."orang"."tgl_lhr_palsu" IS 'menampung data tgl_lhr_palsu pada tabel orang';
COMMENT ON COLUMN "public"."orang"."calon_pengadaan" IS 'menampung data calon_pengadaan pada tabel orang';
COMMENT ON COLUMN "public"."orang"."mk_fiktif_tahun" IS 'menampung data mk_fiktif_tahun pada tabel orang';
COMMENT ON COLUMN "public"."orang"."mk_fiktif_bulan" IS 'menampung data mk_fiktif_bulan pada tabel orang';
COMMENT ON COLUMN "public"."orang"."npwp_nomor" IS 'menampung data npwp_nomor pada tabel orang';
COMMENT ON COLUMN "public"."orang"."npwp_tanggal" IS 'menampung data tanggal npwp pada tabel orang';
COMMENT ON COLUMN "public"."orang"."karis_karsu" IS 'menampung data karis_karsu pada tabel orang';
COMMENT ON COLUMN "public"."orang"."jenis_anak_id" IS 'menampung data id jenis_anak yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."anak_tanggungan" IS 'menampung data anak_tanggungan pada tabel orang';
COMMENT ON COLUMN "public"."orang"."hak_pensiun" IS 'menampung data hak_pensiun pada tabel orang';
COMMENT ON COLUMN "public"."orang"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel orang';
COMMENT ON COLUMN "public"."orang"."bpjs" IS 'menampung data bpjs pada tabel orang';
COMMENT ON COLUMN "public"."orang"."sinkro" IS 'menampung data sinkro pada tabel orang';
COMMENT ON COLUMN "public"."orang"."pendidikan_id" IS 'menampung data id pendidikan yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."tanggal_lulus" IS 'menampung data tanggal lulus pada tabel orang';
COMMENT ON COLUMN "public"."orang"."sekolah_id" IS 'menampung data id sekolah yang ada pada tabel orang';
COMMENT ON COLUMN "public"."orang"."nama_ktp" IS 'menampung data nama_ktp pada tabel orang';
COMMENT ON COLUMN "public"."orang"."faskes_bpjs" IS 'menampung data fasilitas kesehatan bpjs pada tabel orang';
COMMENT ON COLUMN "public"."orang"."kelas_bpjs" IS 'menampung data kelas pelayanan kesehatan bpjs pada tabel orang';
COMMENT ON COLUMN "public"."orang"."status_sinkro" IS 'menampung data status_sinkro pada tabel orang';
COMMENT ON COLUMN "public"."orang"."no_kk" IS 'menampung data no_kk pada tabel orang';
COMMENT ON COLUMN "public"."orang"."jenis_id_dokumen_nama" IS 'kolom hasil denormalisasi yang menyimpan jenis id dokumen, merefer pada tabel jenis_id_dokumen';
COMMENT ON COLUMN "public"."orang"."jenis_kawin_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi jenis perkawinan, merefer ke tabel jenis_kawin';
COMMENT ON COLUMN "public"."orang"."tingkat_pendidikan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai tingkat pendidikan. merefer ke tabel tingkat_pendidikan';
COMMENT ON COLUMN "public"."orang"."agama_nama" IS 'kolom hasil denormalisasi yang menyimpan id dan nama (agama) orang dari tabel agama';
COMMENT ON COLUMN "public"."orang"."jenis_anak_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis anak, merefer ke tabel jenis_anak';
COMMENT ON COLUMN "public"."orang"."pendidikan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pendidikan, merefer ke tabel pendidikan';
COMMENT ON COLUMN "public"."orang"."kabupaten_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi tempat lahir subjek yang bersangkutan. merefer ke tabel lokasi';

-- ----------------------------
-- Records of orang
-- ----------------------------
INSERT INTO "public"."orang" VALUES ('A8ACA7601BAF3912E040640A040269BB', 'A5EB03E2287BF6A0E040640A040252AD', '1', '1', '45', '2', NULL, NULL, 'ELSIAVMA ONLDA', NULL, 'S.SIT, M.Kes', '1955-02-03', 'F', '195502031977122001', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '195502031977122001', NULL, NULL, NULL, NULL, 'f', '2011-07-23 01:01:35', '195502031977122001', NULL, 'ff80808135765c7801358007d8847508', NULL, NULL, NULL, NULL, NULL, NULL, '195502031977122001', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA7C2CE0F3912E040640A040269BB', 'A5EB03E2204AF6A0E040640A040252AD', '1', '1', '40', '1', NULL, NULL, 'LPAANI', NULL, 'S.Pd', '1966-10-30', 'M', '196610302000121002', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', '1116-LT-31122011-0160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '196610302000121002', '2009-03-05', '152810 J', NULL, NULL, 'f', '2011-07-23 03:13:35', '196610302000121002', NULL, 'ff8080815133783a015138675c4575da', '2010-01-01', NULL, NULL, NULL, NULL, NULL, '196610302000121002', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA7C55B393912E040640A040269BB', 'ff8080814fd02be3014fd4f040172ed2', '1', '1', '40', '1', NULL, NULL, 'USBAMPI', 'Drs', NULL, '1960-12-12', 'M', '196012121999051001', '470/41/2018', '2018-06-29', 'f', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', '0000001932502', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '196012121999051001', '2009-02-26', NULL, NULL, NULL, 'f', '2011-07-23 03:17:30', '196012121999051001', NULL, 'A5EB03E208E0F6A0E040640A040252AD', '1987-12-31', NULL, NULL, NULL, NULL, NULL, '196012121999051001', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA783E8653912E040640A040269BB', 'A5EB03E21F56F6A0E040640A040252AD', '1', '1', '40', '1', NULL, NULL, 'ARSHMOAN', NULL, 'S.Pd.I', '1969-07-17', 'M', '196907172007011044', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', '54/SKT/2005', '2007-04-07', '1005/VII/RSD/2007', NULL, '812/1151/VII/DPT/2008', '2008-08-01', NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '196907172007011044', '2011-01-19', NULL, NULL, NULL, 'f', '2011-07-23 01:48:21', '196907172007011044', NULL, '8ae4828739d90f2b0139e3c1b5fc72e8', '2005-01-01', NULL, NULL, NULL, NULL, NULL, '196907172007011044', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA78200513912E040640A040269BB', 'A5EB03E21F56F6A0E040640A040252AD', '1', '1', '40', '1', NULL, NULL, ' YTTIAH', NULL, 'S.Pd.I', '1968-09-04', 'F', '196809042007012026', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', '7124/1988', '2007-05-07', '966/VII/RSD/2007', NULL, NULL, NULL, 'B/SKCK/4960/VII/2007/SAT INTELKAM', '2007-07-04', 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '196809042007012026', '2011-01-19', NULL, NULL, NULL, 'f', '2011-07-23 01:46:04', '196809042007012026', NULL, '8ae48287511e3ed5015137cbbd2163ae', '2008-01-01', NULL, NULL, NULL, NULL, NULL, '196809042007012026', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA7C6B3973912E040640A040269BB', 'A5EB03E22062F6A0E040640A040252AD', '1', '1', '40', '1', NULL, NULL, 'AMHAND SILAUMAIN', 'DRS', NULL, '1963-02-17', 'M', '196302172002121003', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '196302172002121003', NULL, NULL, NULL, NULL, 'f', '2011-07-23 03:20:28', '196302172002121003', NULL, 'A5EB03E21B6DF6A0E040640A040252AD', '1987-12-31', NULL, NULL, NULL, NULL, NULL, '196302172002121003', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA7B21CA13912E040640A040269BB', 'ff80808135c390fe0135c3b05ce5002c', '1', '4', '40', '1', NULL, NULL, 'INR OITAKIAVNI', NULL, 'S.Pd.SD', '1974-10-10', 'F', '197410102005012008', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', NULL, '2005-01-11', '000046', NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '197410102005012008', NULL, NULL, NULL, NULL, 'f', '2011-07-23 02:50:09', '197410102005012008', NULL, 'A5EB03E21C5AF6A0E040640A040252AD', '2010-01-01', NULL, NULL, NULL, NULL, NULL, '197410102005012008', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA7D9181B3912E040640A040269BB', 'A5EB03E23025F6A0E040640A040252AD', '1', '1', '40', '1', NULL, NULL, 'MAESU YARNI', NULL, 'S.Pd', '1969-11-02', 'F', '196911022005022002', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', '474.1/19.367/DISP/1990', '2005-01-17', '445/440/A1.2', NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '196911022005022002', '2010-10-11', '048995 KK', NULL, NULL, 'f', '2011-07-23 03:45:10', '196911022005022002', NULL, 'ff8080813aba12b8013acee530181b4c', '1998-01-01', NULL, NULL, NULL, NULL, NULL, '196911022005022002', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA7BECBF23912E040640A040269BB', 'A5EB03E22085F6A0E040640A040252AD', '1', '1', '25', '1', NULL, NULL, 'SNAI', NULL, 'A.Ma.Pd', '1962-04-25', 'F', '196204251992102001', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '196204251992102001', NULL, NULL, NULL, NULL, 'f', '2011-07-23 03:07:58', '196204251992102001', NULL, 'A5EB03E2100AF6A0E040640A040252AD', '2001-12-31', NULL, NULL, NULL, NULL, NULL, '196204251992102001', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA748B3063912E040640A040269BB', 'A5EB03E21FF5F6A0E040640A040252AD', NULL, '1', '45', '2', NULL, NULL, 'JEDTANSA HA', 'Dr', 'SKp, MARS', '1948-10-08', 'F', '194810081984022001', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '194810081984022001', NULL, NULL, NULL, NULL, 'f', '2011-07-23 00:29:22', '194810081984022001', NULL, 'A5EB03E21306F6A0E040640A040252AD', '1994-12-31', NULL, NULL, NULL, NULL, NULL, '194810081984022001', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA7CCA3EF3912E040640A040269BB', 'A5EB03E22085F6A0E040640A040252AD', '1', '1', '40', '1', NULL, NULL, 'ULY IIAWRTIA', NULL, 'S.Pd.SD', '1984-07-10', 'F', '198407102009012004', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', NULL, '2008-12-12', '120/TU-UMUM/SKD/XII/RS-2008', NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '198407102009012004', NULL, NULL, NULL, NULL, 'f', '2011-07-23 03:28:20', '198407102009012004', NULL, 'ff80808137361a7c01373a1b88a936c2', '2010-09-28', NULL, NULL, NULL, NULL, NULL, '198407102009012004', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang" VALUES ('A8ACA7B0D1D43912E040640A040269BB', 'A5EB03E2300FF6A0E040640A040252AD', '1', '1', '45', '1', NULL, NULL, 'UPSRNAI', NULL, 'S.Pd., M.Pd', '1964-06-08', 'M', '196406081989031014', NULL, NULL, 't', '0812345678910', '02112345678', 'satgascpns2018@gmail.com', NULL, '1990-11-19', 'KS.900/735/KEUR/1990', NULL, NULL, NULL, NULL, NULL, 'Jl. Mayjen Sutoyo no 12', '13410', 'f', 'f', 0, 0, '196406081989031014', '2009-11-26', NULL, NULL, NULL, 'f', '2011-07-23 02:48:16', '196406081989031014', NULL, 'ff80808131f0e6ed0131f43ecb3f071d', '2010-10-10', NULL, NULL, NULL, NULL, NULL, '196406081989031014', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for orang_bahasa
-- ----------------------------
DROP TABLE IF EXISTS "public"."orang_bahasa";
CREATE TABLE "public"."orang_bahasa" (
  "orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "bahasa_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "ncsistime" timestamp(6),
  "bahasa_nama" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."orang_bahasa"."orang_id" IS 'menampung data id orang yang ada pada tabel orang_bahasa';
COMMENT ON COLUMN "public"."orang_bahasa"."bahasa_id" IS 'menampung data id bahasa yang ada pada tabel orang_bahasa';
COMMENT ON COLUMN "public"."orang_bahasa"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel orang_bahasa';
COMMENT ON COLUMN "public"."orang_bahasa"."bahasa_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai preferensi bahasa orang pada record yang bersangkutan';

-- ----------------------------
-- Records of orang_bahasa
-- ----------------------------

-- ----------------------------
-- Table structure for orang_pendidikan
-- ----------------------------
DROP TABLE IF EXISTS "public"."orang_pendidikan";
CREATE TABLE "public"."orang_pendidikan" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pendidikan_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tahun_lulus" int2,
  "nomor_ijazah" varchar(60) COLLATE "pg_catalog"."default",
  "nama_sek" varchar(150) COLLATE "pg_catalog"."default",
  "glr_depan" varchar(25) COLLATE "pg_catalog"."default",
  "glr_belakang" varchar(25) COLLATE "pg_catalog"."default",
  "kepala" varchar(30) COLLATE "pg_catalog"."default",
  "is_pendidikan_pertama" varchar(1) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "tgl_tahun_lulus" date,
  "sinkro_pupns" varchar(1) COLLATE "pg_catalog"."default",
  "sekolah_id" varchar(32) COLLATE "pg_catalog"."default",
  "is_pendidikan_terakhir" varchar(1) COLLATE "pg_catalog"."default",
  "path" text COLLATE "pg_catalog"."default",
  "tipe" varchar(1) COLLATE "pg_catalog"."default",
  "id_riwayat_update" varchar(32) COLLATE "pg_catalog"."default",
  "status_sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "pendidikan_nama" jsonb,
  "ncsistime_del" date
)
;
COMMENT ON COLUMN "public"."orang_pendidikan"."id" IS 'Menampung id pada tabel orang_pendidikan';
COMMENT ON COLUMN "public"."orang_pendidikan"."orang_id" IS 'menampung data id orang yang ada pada tabel orang_pendidikan';
COMMENT ON COLUMN "public"."orang_pendidikan"."pendidikan_id" IS 'menampung data id pendidikan yang ada pada tabel orang_pendidikan';
COMMENT ON COLUMN "public"."orang_pendidikan"."tahun_lulus" IS 'menampung data tahun lulus pendidikan yang ada pada tabel orang_pendidikan';
COMMENT ON COLUMN "public"."orang_pendidikan"."nomor_ijazah" IS 'menampung nomor ijazah pendidikan orang';
COMMENT ON COLUMN "public"."orang_pendidikan"."nama_sek" IS 'menampung nama sekolah / perguruan tinggi';
COMMENT ON COLUMN "public"."orang_pendidikan"."glr_depan" IS 'menampung informasi mengenai gelar pendidikan depan orang';
COMMENT ON COLUMN "public"."orang_pendidikan"."glr_belakang" IS 'menampung informasi mengenai gelar pendidikan belakang orang';
COMMENT ON COLUMN "public"."orang_pendidikan"."kepala" IS 'menampung nama kepala sekolah / rektor perguruan tinggi';
COMMENT ON COLUMN "public"."orang_pendidikan"."is_pendidikan_pertama" IS 'boolean yang menyatakan apakah record bersangkutan adalah pendidikan pertama orang yang bersangkutan atau bukan';
COMMENT ON COLUMN "public"."orang_pendidikan"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel orang_pendidikan';
COMMENT ON COLUMN "public"."orang_pendidikan"."tgl_tahun_lulus" IS 'menampung data tanggal tahun_lulus pada tabel orang_pendidikan';
COMMENT ON COLUMN "public"."orang_pendidikan"."sekolah_id" IS 'menampung data id sekolah yang ada pada tabel orang_pendidikan';
COMMENT ON COLUMN "public"."orang_pendidikan"."is_pendidikan_terakhir" IS 'boolean yang menyatakan apakah record bersangkutan adalah pendidikan terakhir orang yang bersangkutan atau bukan';
COMMENT ON COLUMN "public"."orang_pendidikan"."path" IS 'menampung path file dokumen yang ada';
COMMENT ON COLUMN "public"."orang_pendidikan"."id_riwayat_update" IS 'menampung data id id_riwayat_update yang ada pada tabel orang_pendidikan';
COMMENT ON COLUMN "public"."orang_pendidikan"."asal_id" IS 'menampung data id dari tabel orang_pendidikan_usul';
COMMENT ON COLUMN "public"."orang_pendidikan"."asal_nama" IS 'menampung informasi mengenai record pada tabel orang_pendidikan_usul';
COMMENT ON COLUMN "public"."orang_pendidikan"."pendidikan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pendidikan, merefer ke tabel pendidikan';

-- ----------------------------
-- Records of orang_pendidikan
-- ----------------------------
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA952743B3912E040640A040269BB', 'A8ACA7B21CA13912E040640A040269BB', 'A5EB03E20ED2F6A0E040640A040252AD', 1990, '12 OB ob 0916127', 'SMPN PADANGCERMIN', NULL, NULL, NULL, '0', '2011-07-23 08:08:51', '1990-06-04', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA952743C3912E040640A040269BB', 'A8ACA7B21CA13912E040640A040269BB', 'A5EB03E215D6F6A0E040640A040252AD', 1993, '99', 'SMKKN T. BETUNG', NULL, NULL, NULL, '0', '2011-07-23 08:08:51', '1993-05-29', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA948C7863912E040640A040269BB', 'A8ACA7C55B393912E040640A040269BB', 'A5EB03E20ED3F6A0E040640A040252AD', 1979, '55984/A/TS/78/80', 'MADRASAH TSANAWIYAH AGAMA ISLAM', NULL, NULL, NULL, '0', '2011-07-23 08:07:42', '1980-12-15', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9589C533912E040640A040269BB', 'A8ACA7B21CA13912E040640A040269BB', 'A5EB03E20EB8F6A0E040640A040252AD', 1987, '99', 'SDN SANGGI', NULL, NULL, NULL, '0', '2011-07-23 08:09:32', '1987-06-06', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9589C543912E040640A040269BB', 'A8ACA7B21CA13912E040640A040269BB', '8ae48288503bd9ee01504566e26e7061', 2003, '4821/38.3.SO.2/2003', 'UNILA', NULL, 'A.Ma', NULL, '1', '2011-07-23 08:09:32', '2003-01-14', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA948C7873912E040640A040269BB', 'A8ACA7C55B393912E040640A040269BB', 'A5EB03E215BAF6A0E040640A040252AD', 1982, '200/A/1985', 'MADRASAH ALIYAH', NULL, NULL, NULL, '0', '2011-07-23 08:07:42', '1982-05-08', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA94AD1833912E040640A040269BB', 'A8ACA7C55B393912E040640A040269BB', 'A5EB03E20EB9F6A0E040640A040252AD', 1974, 'M.IA/131/95/1987', 'MADRASAH IBTIDAYAH', NULL, NULL, NULL, '0', '2011-07-23 08:07:55', '1974-12-31', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA948E5393912E040640A040269BB', 'A8ACA7C55B393912E040640A040269BB', 'A5EB03E208E0F6A0E040640A040252AD', 1987, '342/SC/87', 'IAIN AR RANIRY DARUSSALAM', 'Drs', NULL, NULL, '0', '2011-07-23 08:07:43', '1987-05-25', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA94AD1843912E040640A040269BB', 'A8ACA7C55B393912E040640A040269BB', 'A5EB03E20B2DF6A0E040640A040252AD', 1985, '693/FS/1985', 'IAIN AR RANIRY DARUSSALAM', NULL, 'BA', NULL, '0', '2011-07-23 08:07:55', '1985-10-09', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae48287392439610139312fad820998', 'A8ACA7B21CA13912E040640A040269BB', 'A5EB03E21C5AF6A0E040640A040252AD', 2010, NULL, NULL, NULL, 'S.Pd.SD', NULL, '0', '2012-08-17 03:46:12', '2010-03-17', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('AE20670804C1F311E040640A0202096A', 'A8ACA783E8653912E040640A040269BB', 'A5EB03E215BAF6A0E040640A040252AD', 1988, '-Wi. LXXXIII 006875', 'MA ALJIHADIYAH', NULL, NULL, NULL, '1', '2011-09-30 11:29:33', '1988-05-14', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('AE2067078E98F311E040640A0202096A', 'A8ACA78200513912E040640A040269BB', 'A5EB03E20ACDF6A0E040640A040252AD', 1989, 'wi.LXXXIX 004436', NULL, NULL, NULL, NULL, '1', '2011-09-30 10:59:37', '1989-05-05', '1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('ff80808136a0d7e90136aa3305ba6b4f', 'A8ACA7C2CE0F3912E040640A040269BB', 'ff8080815133783a015138675c4575da', 2010, NULL, NULL, NULL, 'S.Pd', NULL, '0', '2012-04-13 12:35:32', '2010-12-06', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae4828739c4b0070139d7379f9d4e53', 'A8ACA78200513912E040640A040269BB', '8ae48287511e3ed5015137cbbd2163ae', 2008, NULL, NULL, NULL, 'S.Pd.I', NULL, '0', '2012-09-18 09:31:50', '2008-01-01', '1', '1E5CB8D2761F07F4E050640A2902192A', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('ff8080813ec18e20013ee51cefc13308', 'A8ACA783E8653912E040640A040269BB', '8ae4828739d90f2b0139e3c1b5fc72e8', 2005, NULL, NULL, NULL, 'S.Pd.I', NULL, '0', '2013-05-27 15:31:18', '2005-01-01', '1', '8ae48207505ca172015069b5ea6c5a2a', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae482a55081e9240150846416fa6066', 'A8ACA783E8653912E040640A040269BB', 'A5EB03E20ED2F6A0E040640A040252AD', 1985, '02 OB ob  1303714', 'SMPN SUKATANI', NULL, NULL, NULL, '0', '2017-03-16 15:45:11', '1985-05-14', '2', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae482a34fcc3bd2014fccfb13664989', 'A8ACA78200513912E040640A040269BB', 'A5EB03E20EB8F6A0E040640A040252AD', 1982, '02 OA oa 334822', NULL, NULL, NULL, NULL, '0', '2017-03-10 14:26:28', '1982-05-19', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae482a55081e924015084609a02563e', 'A8ACA783E8653912E040640A040269BB', 'A5EB03E20EB8F6A0E040640A040252AD', 1982, '02 OA oa 334682', 'SDN SUKAMAKMUR I', NULL, NULL, NULL, '0', '2017-03-16 15:45:11', '1982-05-29', '2', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae482a451b00bad0151b8372eb0310d', 'A8ACA7601BAF3912E040640A040269BB', 'ff8080813b281b37013b3a7db9974419', 1988, '069/26/PJJ-BDG/1988', 'AKPER PAJAJARAN BANDUNG', NULL, 'Amd.Kep', NULL, '0', '2017-04-06 14:21:58', '1988-08-16', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA95674073912E040640A040269BB', 'A8ACA7C6B3973912E040640A040269BB', 'A5EB03E21B6DF6A0E040640A040252AD', 1987, '277/993/KP/PES/87', 'UNSYIAH DARUSSALAM BANDA ACEH', NULL, NULL, NULL, '0', '2011-07-23 08:09:19', '1987-04-15', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae482a34fcc3bd2014fcd012dbf4dbe', 'A8ACA78200513912E040640A040269BB', 'ff80808148cfa72e0148edf02dab3a2b', 2002, 'IN.IO/70198', 'UNIVERSITAS ISLAM NEGERI SUNAN GUNUNG JATI', NULL, 'A.Ma', NULL, '0', '2017-03-16 13:48:48', '2002-12-21', '2', '1E5CB8D2743007F4E050640A2902192A', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae482a34fcc3bd2014fccfd6e934b27', 'A8ACA78200513912E040640A040269BB', 'A5EB03E20ED3F6A0E040640A040252AD', 1986, '37312', 'MTSS AL HIDAYAH', NULL, NULL, NULL, '0', '2017-03-16 13:48:48', '1986-05-01', '2', '8ae482a34e492d11014e4d08bc5d09d0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9347BDA3912E040640A040269BB', 'A8ACA7BECBF23912E040640A040269BB', 'A5EB03E2100AF6A0E040640A040252AD', 2001, '0238329/12000203586', 'UNIVERSITAS TERBUKA', NULL, 'A.Ma.Pd', NULL, '1', '2011-07-23 08:05:20', '2001-01-15', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9A433BC3912E040640A040269BB', 'A8ACA7C2CE0F3912E040640A040269BB', 'A5EB03E214ACF6A0E040640A040252AD', 1993, '318/D.III/1993', 'UNIVERSITAS SAMUDRA LANGSA', NULL, 'A.Md', NULL, '0', '2011-07-23 08:18:33', '1993-08-28', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae482a451b00bad0151b83bb5b5322a', 'A8ACA7601BAF3912E040640A040269BB', 'A5EB03E2099BF6A0E040640A040252AD', 1982, '168/IJ/SGP/GBD/PKM/1982', 'SEKOLAH GURU PERAWATAN', NULL, NULL, NULL, '0', '2017-07-14 09:29:32', '1982-07-17', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('8ae483a56d4c212d016d5cd581a30c53', 'A8ACA7601BAF3912E040640A040269BB', 'ff80808135765c7801358007d8847508', 2005, '9', 'UNIV', NULL, NULL, NULL, '0', '2019-09-23 13:41:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA932CB6F3912E040640A040269BB', 'A8ACA7BECBF23912E040640A040269BB', 'A5EB03E20EB8F6A0E040640A040252AD', 1974, '111 A.a.29050', 'SD 1 Pasir Talang', NULL, NULL, NULL, '0', '2011-07-23 08:05:07', '1974-12-31', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA932CB703912E040640A040269BB', 'A8ACA7BECBF23912E040640A040269BB', 'A5EB03E215ACF6A0E040640A040252AD', 1979, '6092/CP/X/7879', 'PGA N 4 Tahun', NULL, NULL, NULL, '0', '2011-07-23 08:05:07', '1979-05-27', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA932CB713912E040640A040269BB', 'A8ACA7BECBF23912E040640A040269BB', 'A5EB03E215BAF6A0E040640A040252AD', 1981, '559/512/MAN/31/13/80/81', 'MAN Padang', NULL, NULL, NULL, '0', '2011-07-23 08:05:07', '1981-05-07', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9347BDB3912E040640A040269BB', 'A8ACA7BECBF23912E040640A040269BB', 'A5EB03E20C3FF6A0E040640A040252AD', 1985, '08.OE.cc.0004515', 'KPG NEGERI PADANG', NULL, NULL, NULL, '0', '2011-07-23 08:05:20', '1985-05-03', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA950747E3912E040640A040269BB', 'A8ACA7C6B3973912E040640A040269BB', 'A5EB03E20EB9F6A0E040640A040252AD', 1974, 'STB 600', 'MIN LAMNO NEGERI', NULL, NULL, NULL, '0', '2011-07-23 08:08:37', '1974-01-05', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA95674083912E040640A040269BB', 'A8ACA7C6B3973912E040640A040269BB', 'A5EB03E20ED3F6A0E040640A040252AD', 1976, '2881/A/Ts/76/79', 'MTsN LAMNO NEGERI', NULL, NULL, NULL, '0', '2011-07-23 08:09:19', '1979-05-23', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA95674093912E040640A040269BB', 'A8ACA7C6B3973912E040640A040269BB', 'A5EB03E215B5F6A0E040640A040252AD', 1980, '1 CH 004 677', 'SMA ADI DARMA/SWASTA', NULL, NULL, NULL, '0', '2011-07-23 08:09:19', '1980-05-05', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA996438A3912E040640A040269BB', 'A8ACA7D9181B3912E040640A040269BB', 'A5EB03E20EB8F6A0E040640A040252AD', 1982, 'NO.12 OA oa 32195', 'SD NEGERI 2 REJOMULYO', NULL, NULL, NULL, '0', '2011-07-23 08:16:56', '1982-01-01', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA996438B3912E040640A040269BB', 'A8ACA7D9181B3912E040640A040269BB', 'A5EB03E20ED2F6A0E040640A040252AD', 1985, 'NO.12 OB ob 0657129', 'SMP MUHAMMADIYAH BANTUL', NULL, NULL, NULL, '0', '2011-07-23 08:16:56', '1985-01-01', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA996438C3912E040640A040269BB', 'A8ACA7D9181B3912E040640A040269BB', 'A5EB03E215B5F6A0E040640A040252AD', 1988, 'NO.12 OC oh 0236685', 'SMA NUSANTARA BANTUL', NULL, NULL, NULL, '0', '2011-07-23 08:16:56', '1988-01-01', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9A433BD3912E040640A040269BB', 'A8ACA7C2CE0F3912E040640A040269BB', 'A5EB03E20EB8F6A0E040640A040252AD', 1979, 'I Aa No 18635', 'SD NEGERI 1 ALUR SELEBU', NULL, NULL, NULL, '0', '2011-07-23 08:18:33', '1979-06-06', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA99648983912E040640A040269BB', 'A8ACA7D9181B3912E040640A040269BB', 'ff8080813aba12b8013acee530181b4c', 1998, '1822.2.245.71208', 'UNIVERSITAS MUHAMMADIYAH METRO', NULL, 'S.Pd', NULL, '1', '2011-07-23 08:16:56', '1998-03-21', '1', '1E5C99EF0C70345DE050640A29021636', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9A4176B3912E040640A040269BB', 'A8ACA7C2CE0F3912E040640A040269BB', 'A5EB03E20ED2F6A0E040640A040252AD', 1982, '07.OB ob 0009336', 'SMP NEGERI 1 KUALASIMPANG', NULL, NULL, NULL, '0', '2011-07-23 08:18:33', '1982-06-12', '1', '8ae4829637e903e90137e9470ea706dd', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9A433BE3912E040640A040269BB', 'A8ACA7C2CE0F3912E040640A040269BB', 'A5EB03E215B8F6A0E040640A040252AD', 1985, '07.oc oh 0265794', 'SMA NEGERI 1 KEJURUAN MUDA', NULL, NULL, NULL, '0', '2011-07-23 08:18:33', '1985-04-30', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9ACF63F3912E040640A040269BB', 'A8ACA7601BAF3912E040640A040269BB', 'A5EB03E20BF3F6A0E040640A040252AD', 1999, '037-J04-C/137-110-99', 'UNIVERSITAS HASANUDDIN', NULL, 'AHLI KEPERAWATAN', NULL, '0', '2011-07-23 08:19:41', '1999-03-08', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9ACF6403912E040640A040269BB', 'A8ACA7601BAF3912E040640A040269BB', 'A5EB03E20EB8F6A0E040640A040252AD', 1967, NULL, NULL, NULL, NULL, NULL, NULL, '2011-07-23 08:19:41', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9ACF6413912E040640A040269BB', 'A8ACA7601BAF3912E040640A040269BB', 'A5EB03E20ED2F6A0E040640A040252AD', 1970, 'LPA 117911', 'SMP ADVENT TONDANO', NULL, NULL, NULL, '0', '2011-07-23 08:19:41', '1970-11-10', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA9ACF6423912E040640A040269BB', 'A8ACA7601BAF3912E040640A040269BB', 'A5EB03E215B6F6A0E040640A040252AD', 1973, 'No.PP.36', 'SMA NEGERI TONDANO', NULL, NULL, NULL, '0', '2011-07-23 08:19:41', '1973-02-10', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA992EF313912E040640A040269BB', 'A8ACA748B3063912E040640A040269BB', 'A5EB03E20EB8F6A0E040640A040252AD', 1961, NULL, NULL, NULL, NULL, NULL, NULL, '2011-07-23 08:16:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA992E5E13912E040640A040269BB', 'A8ACA748B3063912E040640A040269BB', 'A5EB03E21306F6A0E040640A040252AD', 1994, NULL, NULL, NULL, NULL, NULL, NULL, '2011-07-23 08:16:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA992E5E43912E040640A040269BB', 'A8ACA748B3063912E040640A040269BB', 'A5EB03E215B5F6A0E040640A040252AD', 1967, NULL, NULL, NULL, NULL, NULL, NULL, '2011-07-23 08:16:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA992F0003912E040640A040269BB', 'A8ACA748B3063912E040640A040269BB', 'A5EB03E20ED2F6A0E040640A040252AD', 1964, NULL, NULL, NULL, NULL, NULL, NULL, '2011-07-23 08:16:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."orang_pendidikan" VALUES ('A8ACA992F0013912E040640A040269BB', 'A8ACA748B3063912E040640A040269BB', '8ae48287511e3ed5015137a47ce04d75', 1969, NULL, NULL, NULL, NULL, NULL, NULL, '2011-07-23 08:16:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pns
-- ----------------------------
DROP TABLE IF EXISTS "public"."pns";
CREATE TABLE "public"."pns" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "kpkn_id" varchar(32) COLLATE "pg_catalog"."default",
  "instansi_kerja_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "instansi_induk_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jenis_pegawai_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "jabatan_fungsional_id" varchar(32) COLLATE "pg_catalog"."default",
  "kedudukan_hukum_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "jabatan_fungsional_umum_id" varchar(32) COLLATE "pg_catalog"."default",
  "golongan_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "lokasi_kerja_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nip_lama" varchar(9) COLLATE "pg_catalog"."default",
  "nip_baru" varchar(18) COLLATE "pg_catalog"."default" NOT NULL,
  "status_cpns_pns" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "nomor_sk_cpns" varchar(40) COLLATE "pg_catalog"."default",
  "tgl_sk_cpns" date,
  "nom_urut_sk_cpns" int4,
  "nomor_sk_pns" varchar(50) COLLATE "pg_catalog"."default",
  "tgl_sk_pns" date,
  "nom_urut_sk_pns" int4,
  "nomor_sttpl" varchar(70) COLLATE "pg_catalog"."default",
  "tgl_sttpl" date,
  "tgl_tugas" date,
  "kartu_pegawai" varchar(30) COLLATE "pg_catalog"."default",
  "askes_nomor" varchar(40) COLLATE "pg_catalog"."default",
  "tmt_golongan" date,
  "tmt_eselon" date,
  "rumah" bool,
  "tabrum" bool,
  "gunrum" varchar(1) COLLATE "pg_catalog"."default",
  "kredit_utama" numeric(9,4),
  "kredit_penumjang" numeric(9,4),
  "kantor_ktb" varchar(1) COLLATE "pg_catalog"."default",
  "satuan_kerja_induk_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "satuan_kerja_kerja_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "unor_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tmt_cpns" date,
  "tmt_pns" date,
  "golongan_awal_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "tmt_jabatan" date,
  "jenis_jabatan_id" int4 NOT NULL,
  "tanggal_ditetapkan_nip" date,
  "np_cpns_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "tanggal_dokter_pns" date,
  "nomor_dokter_pns" varchar(70) COLLATE "pg_catalog"."default",
  "np_cpns_tanggal" date,
  "np_pns_tanggal" date,
  "np_pns_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "nomor_spmt" varchar(50) COLLATE "pg_catalog"."default",
  "spesimen_peng" bool,
  "spesimen_kp" bool,
  "spesimen_pens" bool,
  "latihan_struktural_nama" varchar(40) COLLATE "pg_catalog"."default",
  "tmt_melaksanakan_tugas" date,
  "tmt_pensiun" date,
  "spesimen_pere" bool,
  "mk_tahun" int4,
  "mk_bulan" int4,
  "sudah_dpcp" bool,
  "pertek_cpns_pns_l2th_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "pertek_cpns_pns_l2th_tanggal" date,
  "taspen_id" varchar(3) COLLATE "pg_catalog"."default",
  "pns_bkncod" varchar(2) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "mgr_instansi_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "mgr_instansi_induk_id" varchar(32) COLLATE "pg_catalog"."default",
  "sk_konv_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "sk_konv_tanggal" date,
  "sk_konv_urut" int4,
  "sk_perbaikan_tanggal" date,
  "spesimen_nip" bool,
  "mgr_nip_lama" varchar(9) COLLATE "pg_catalog"."default",
  "eselon_id" varchar(2) COLLATE "pg_catalog"."default",
  "tgl_rakor_hnr" date,
  "no_rakor_hnr" varchar(30) COLLATE "pg_catalog"."default",
  "jenis_pengadaan_id" varchar(1) COLLATE "pg_catalog"."default",
  "spesimen_pejabat_cpns" varchar(150) COLLATE "pg_catalog"."default",
  "kpe" varchar(3) COLLATE "pg_catalog"."default",
  "gunrum2" varchar(4) COLLATE "pg_catalog"."default",
  "tabrum2" varchar(4) COLLATE "pg_catalog"."default",
  "level_blokir_id" varchar(1) COLLATE "pg_catalog"."default",
  "gaji_pokok" numeric(1000,53),
  "kpkn_nama" varchar(200) COLLATE "pg_catalog"."default",
  "ktua_id" uuid,
  "ktua_nama" varchar(100) COLLATE "pg_catalog"."default",
  "instansi_kerja_nama" jsonb,
  "instansi_induk_nama" jsonb,
  "jenis_pegawai_nama" varchar(100) COLLATE "pg_catalog"."default",
  "jabatan_fungsional_nama" jsonb,
  "kedudukan_hukum_nama" jsonb,
  "jabatan_fungsional_umum_nama" jsonb,
  "golongan_nama" jsonb,
  "lokasi_kerja_nama" jsonb,
  "satuan_kerja_induk_nama" jsonb,
  "satuan_kerja_kerja_nama" jsonb,
  "unor_nama" jsonb,
  "golongan_awal_nama" jsonb,
  "jenis_jabatan_nama" jsonb,
  "taspen_nama" jsonb,
  "jenis_pengadaan_nama" jsonb,
  "eselon_nama" jsonb,
  "alamat_nama" varchar(255) COLLATE "pg_catalog"."default",
  "isntansi_kerja_nama" jsonb,
  "mgr_instansi_induk_nama" jsonb,
  "mgr_instansi_kerja_nama" jsonb,
  "alamat_id" varchar(32) COLLATE "pg_catalog"."default",
  "badan_usaha_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pns"."id" IS 'Menampung id pada tabel pns';
COMMENT ON COLUMN "public"."pns"."kpkn_id" IS 'menampung data id kpkn (kantor perbendaharaan dan kas negara, sekarang kppn) yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."instansi_kerja_id" IS 'menampung data id instansi_kerja yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."instansi_induk_id" IS 'menampung data id instansi_induk yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."jenis_pegawai_id" IS 'menampung data id jenis_pegawai yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."jabatan_fungsional_id" IS 'menampung data id jabatan_fungsional yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."kedudukan_hukum_id" IS 'menampung data id kedudukan_hukum yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."jabatan_fungsional_umum_id" IS 'menampung data id jabatan_fungsional_umum yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."golongan_id" IS 'menampung data id golongan yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."lokasi_kerja_id" IS 'menampung data id lokasi_kerja yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."nip_lama" IS 'menampung data nip_lama pada tabel pns';
COMMENT ON COLUMN "public"."pns"."nip_baru" IS 'menampung data nip_baru pada tabel pns';
COMMENT ON COLUMN "public"."pns"."nomor_sk_cpns" IS 'menampung data nomor_sk_cpns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tgl_sk_cpns" IS 'menampung data tanggal sk_cpns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."nom_urut_sk_cpns" IS 'menampung data nomor_urut_sk_cpns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."nomor_sk_pns" IS 'menampung data nomor_sk_pns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tgl_sk_pns" IS 'menampung data tanggal sk_pns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."nom_urut_sk_pns" IS 'menampung data nomor_urut_sk_pns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."nomor_sttpl" IS 'menampung data nomor_Surat Tanda Tamat Pendidikan dan Latihan pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tgl_sttpl" IS 'menampung data tanggal sttpl pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tgl_tugas" IS 'menampung data tanggal tugas pada tabel pns';
COMMENT ON COLUMN "public"."pns"."askes_nomor" IS 'menampung nomor asuransi kesehatan pns';
COMMENT ON COLUMN "public"."pns"."tmt_golongan" IS 'menampung data terhitung mulai tanggal golongan pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tmt_eselon" IS 'menampung data terhitung mulai tanggal eselon pada tabel pns';
COMMENT ON COLUMN "public"."pns"."satuan_kerja_induk_id" IS 'menampung data id satuan_kerja_induk yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."satuan_kerja_kerja_id" IS 'menampung data id satuan_kerja_kerja yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."unor_id" IS 'menampung data id unor yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tmt_cpns" IS 'menampung data terhitung mulai tanggal cpns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tmt_pns" IS 'menampung data terhitung mulai tanggal pns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."golongan_awal_id" IS 'menampung data id golongan_awal yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tmt_jabatan" IS 'menampung data terhitung mulai tanggal jabatan pada tabel pns';
COMMENT ON COLUMN "public"."pns"."jenis_jabatan_id" IS 'menampung data id jenis_jabatan yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tanggal_ditetapkan_nip" IS 'menampung data tanggal ditetapkan_nip pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tanggal_dokter_pns" IS 'menampung data tanggal dokter_pns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."nomor_dokter_pns" IS 'menampung data nomor_dokter_pns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."np_cpns_tanggal" IS 'menampung data tanggal np_cpns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."np_pns_tanggal" IS 'menampung data tanggal np_pns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."nomor_spmt" IS 'menampung data nomor_Surat Pernyataan Melaksanakan Tugas pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tmt_melaksanakan_tugas" IS 'menampung data terhitung mulai tanggal melaksanakan_tugas pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tmt_pensiun" IS 'menampung data terhitung mulai tanggal pensiun pada tabel pns';
COMMENT ON COLUMN "public"."pns"."mk_tahun" IS 'menampung data masa kerja_tahun pada tabel pns';
COMMENT ON COLUMN "public"."pns"."mk_bulan" IS 'menampung data masa kerja_bulan pada tabel pns';
COMMENT ON COLUMN "public"."pns"."pertek_cpns_pns_l2th_tanggal" IS 'menampung data tanggal peraturan teknis cpns dan pns pada tabel pns';
COMMENT ON COLUMN "public"."pns"."taspen_id" IS 'menampung data id taspen yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel pns';
COMMENT ON COLUMN "public"."pns"."mgr_instansi_kerja_id" IS 'menampung data id mgr_instansi_kerja yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."mgr_instansi_induk_id" IS 'menampung data id mgr_instansi_induk yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."sk_konv_nomor" IS 'menampung data nomor sk konversi pada tabel pns';
COMMENT ON COLUMN "public"."pns"."sk_konv_tanggal" IS 'menampung data tanggal sk_konv pada tabel pns';
COMMENT ON COLUMN "public"."pns"."sk_konv_urut" IS 'menampung data urutan sk konversi pada tabel pns';
COMMENT ON COLUMN "public"."pns"."sk_perbaikan_tanggal" IS 'menampung data tanggal sk_perbaikan pada tabel pns';
COMMENT ON COLUMN "public"."pns"."eselon_id" IS 'menampung data id eselon yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."tgl_rakor_hnr" IS 'menampung data tanggal rakor_hnr pada tabel pns';
COMMENT ON COLUMN "public"."pns"."jenis_pengadaan_id" IS 'menampung data id jenis_pengadaan yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."level_blokir_id" IS 'menampung data id level_blokir yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."gaji_pokok" IS 'menampung jumlah gaji pokok pns';
COMMENT ON COLUMN "public"."pns"."kpkn_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai Kantor Perbendaharaan dan Kas Negara (sekarang Kantor Pelayanan Perbendaharaan Negara - KPPN), merefer ke tabel kpkn';
COMMENT ON COLUMN "public"."pns"."ktua_id" IS 'menampung data id ktkua yang ada pada tabel pns';
COMMENT ON COLUMN "public"."pns"."ktua_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai Kantor Tata-Usaha Anggaran, merefer ke tabel ktua';
COMMENT ON COLUMN "public"."pns"."instansi_kerja_nama" IS 'nama instansi beserta dengan informasi';
COMMENT ON COLUMN "public"."pns"."instansi_induk_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi induk dari tabel instansi';
COMMENT ON COLUMN "public"."pns"."jenis_pegawai_nama" IS 'kolom hasil denormalisasi yang meyimpan informasi mengenai jenis pegawai subjek yang bersangkutan, merefer ke tabel jenis_pegawai';
COMMENT ON COLUMN "public"."pns"."jabatan_fungsional_nama" IS 'kolom hasil denormalisasi yang menyimpan infromasi jabatan fungsional, merefer ke tabel jabatan_fungsional';
COMMENT ON COLUMN "public"."pns"."kedudukan_hukum_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi kedudukan hukum dari subjek yang bersangkutan, merefer ke tabel kedudukan_hukum';
COMMENT ON COLUMN "public"."pns"."jabatan_fungsional_umum_nama" IS 'kolom hasil denormalisasi yang menyimpan infromasi jabatan fungsional umum, merefer ke tabel jabatan_fungsional_umum';
COMMENT ON COLUMN "public"."pns"."golongan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi golongan dari tabel golongan';
COMMENT ON COLUMN "public"."pns"."lokasi_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai lokasi kerja, merefer ke tabel lokasi';
COMMENT ON COLUMN "public"."pns"."satuan_kerja_induk_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja induk, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."pns"."satuan_kerja_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."pns"."unor_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi. merefer ke tabel unor';
COMMENT ON COLUMN "public"."pns"."golongan_awal_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi golongan awal dari tabel golongan';
COMMENT ON COLUMN "public"."pns"."jenis_jabatan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis jabatan, merefer ke tabel jenis_jabatan';
COMMENT ON COLUMN "public"."pns"."taspen_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai Dana Tabungan dan Asuransi Pegawai Negeri, merefer ke tabel taspen';
COMMENT ON COLUMN "public"."pns"."jenis_pengadaan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis pengadaan pns, merefer ke tabel jenis_pengadaan';
COMMENT ON COLUMN "public"."pns"."eselon_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi eselon pns dari tabel eselon';
COMMENT ON COLUMN "public"."pns"."isntansi_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi kerja dari tabel instansi';
COMMENT ON COLUMN "public"."pns"."mgr_instansi_induk_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai mgr instansi induk, merefer ke tabel instansi';
COMMENT ON COLUMN "public"."pns"."mgr_instansi_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai mgr instansi kerja, merefer ke tabel instansi';
COMMENT ON COLUMN "public"."pns"."alamat_id" IS 'menampung alamat pns';

-- ----------------------------
-- Records of pns
-- ----------------------------
INSERT INTO "public"."pns" VALUES ('A8ACA7601BAF3912E040640A040269BB', 'A5EB03E21D13F6A0E040640A040252AD', 'A5EB03E23AF9F6A0E040640A040252AD', 'A5EB03E23AF9F6A0E040640A040252AD', '01', 'A5EB03E2404DF6A0E040640A040252AD', '01', NULL, '42', 'A5EB03E22055F6A0E040640A040252AD', '140086740', '195502031977122001', 'P', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'B 827020', '00826 82 00503 ', '2010-04-01', NULL, 't', 't', NULL, 0.0000, 0.0000, '1', 'A5EB03E244E8F6A0E040640A040252AD', 'A5EB03E244E8F6A0E040640A040252AD', '45A0F2050809AD5CE050640A2A0206CC', '1977-12-01', '1979-03-01', '21', '2016-01-01', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, '2020-03-01', 'f', 42, 3, NULL, NULL, NULL, '602', '04', '2011-07-23 01:01:35', NULL, NULL, '0021/KV/13015/KEP/2008', '2008-10-06', 1174, NULL, 'f', '140086740', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4522500.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA78200513912E040640A040269BB', 'A5EB03E21CA0F6A0E040640A040252AD', 'A5EB03E23C41F6A0E040640A040252AD', 'A5EB03E23C41F6A0E040640A040252AD', '15', 'ff808081333324c50133391997e007ba', '01', NULL, '34', 'A5EB03E223DDF6A0E040640A040252AD', '480178462', '196809042007012026', 'P', '813/277/BKD/KEP/2007', '2007-11-22', 0, NULL, NULL, 0, NULL, NULL, '2007-11-27', 'N. 314597', '0000072658179', '2018-10-01', NULL, 'f', 'f', NULL, 310.7290, 7.4000, NULL, 'A5EB03E241C9F6A0E040640A040252AD', 'A5EB03E241C9F6A0E040640A040252AD', 'ff8080813533d43a0135370a5ffc3719', '2007-01-01', '2008-12-01', '21', '2015-10-01', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '800/1914/2007', 'f', 'f', 'f', NULL, NULL, '2028-10-01', 'f', 16, 9, NULL, NULL, NULL, NULL, '03', '2011-07-23 01:46:04', NULL, NULL, '0008/KV/III/23216/KEP/2008', '2008-10-16', 10, NULL, 'f', '480178462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3565000.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA783E8653912E040640A040269BB', 'A5EB03E21CA0F6A0E040640A040252AD', 'A5EB03E23C41F6A0E040640A040252AD', 'A5EB03E23C41F6A0E040640A040252AD', '15', 'ff808081333324c50133391997e007ba', '01', NULL, '33', 'A5EB03E223DDF6A0E040640A040252AD', '480178456', '196907172007011044', 'P', '813/277-BKD/KEP/2007', '2007-11-22', 0, '821.1/424-BKD/Kep/2008', '2008-11-24', 0, '352/III/PRAJAB I.II/BKN/2008', '2008-05-01', '2007-11-27', 'N 314592', '0000072654311', '2018-04-01', NULL, 'f', 'f', NULL, 231.3700, 3.4600, NULL, 'A5EB03E241C9F6A0E040640A040252AD', 'A5EB03E241C9F6A0E040640A040252AD', 'ff8080813533d43a0135370b444e3742', '2007-01-01', '2008-12-01', '21', '2018-03-08', 2, NULL, NULL, '2008-08-11', '812/1151/VII/DPT/2008', NULL, NULL, NULL, '800/1914/2007', 'f', 'f', 'f', NULL, NULL, '2029-08-01', 'f', 12, 9, NULL, NULL, NULL, NULL, '03', '2011-07-23 01:48:21', NULL, NULL, '0008/KV/III/23216/KEP/2008', '2008-10-16', 4, NULL, 'f', '480178456', NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, 3214700.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA7B21CA13912E040640A040269BB', 'A5EB03E21C9CF6A0E040640A040252AD', 'A5EB03E23AF7F6A0E040640A040252AD', 'A5EB03E23AF7F6A0E040640A040252AD', '15', 'ff808081333324c50133391997e007ba', '01', NULL, '34', 'ff808081346a6a8001348cdaf24621c7', '460025477', '197410102005012008', 'P', '800/41/IV.04/II/2005', '2005-02-28', 0, '821.12/60/IV.04/2006', '2006-03-29', 0, '5325/8/PRAJAB/II/LAN/2005', '2005-11-22', NULL, 'M.229273', NULL, '2020-04-01', '2011-07-23', 'f', 'f', NULL, 226.1970, 6.7500, NULL, 'A5EB03E241B8F6A0E040640A040252AD', 'A5EB03E241B8F6A0E040640A040252AD', 'ff80808133869a59013386ca94290405', '2005-01-01', '2006-04-01', '22', '2017-10-01', 2, NULL, NULL, '2005-12-05', 'Kp.05.01.847', NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, '2034-11-01', 'f', 17, 9, NULL, NULL, NULL, NULL, '05', '2011-07-23 02:50:09', NULL, NULL, '0002/KV/V/21809/KEP/2008', '2008-10-16', 692, NULL, 'f', '460025477', NULL, NULL, NULL, NULL, NULL, '113', NULL, '1', NULL, 3528100.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA7C2CE0F3912E040640A040269BB', 'A5EB03E21CA0F6A0E040640A040252AD', 'A5EB03E23B12F6A0E040640A040252AD', 'A5EB03E23B12F6A0E040640A040252AD', '15', 'A5EB03E23F44F6A0E040640A040252AD', '01', NULL, '33', 'A5EB03E2204AF6A0E040640A040252AD', '132274566', '196610302000121002', 'P', '1470/107.3b/KP4/2001', '2001-01-30', 0, 'PEG.821.11/02/2002', '2002-02-28', 0, '71/I/XXXVI/LP/DIKLATPROP/2001', '2001-11-14', NULL, 'J 091489/6273700007004771', '0000001949354', '2018-04-01', '2013-05-20', 't', 't', NULL, 164.1220, 68.8050, '1', 'A5EB03E24133F6A0E040640A040252AD', 'A5EB03E24133F6A0E040640A040252AD', '8ae482a75a4bd60d015a5adfcb246458', '2000-12-01', '2002-03-01', '12', '2018-04-01', 2, NULL, NULL, '2001-12-27', '750/DPT-RSUL/KES/2002', NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, NULL, 'f', 17, 2, NULL, NULL, NULL, '708', '06', '2011-07-23 03:13:35', NULL, NULL, '0001/KV/VI/21173/KEP/2008', '2008-10-16', 1521, NULL, 'f', '132274566', NULL, NULL, NULL, '1', NULL, '111', NULL, '1', NULL, 3420300.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA7C55B393912E040640A040269BB', 'A5EB03E21CA0F6A0E040640A040252AD', 'A5EB03E23C28F6A0E040640A040252AD', 'A5EB03E23C28F6A0E040640A040252AD', '15', NULL, '99', '8ae482884fb0ff58014fb10bde5c12c4', '41', 'A5EB03E21F3FF6A0E040640A040252AD', '150298177', '196012121999051001', 'P', 'WA/I-b/Kp.00.3/2605/1999', '1999-05-01', 0, 'Wa/I-b/Kp.00.3/1882/2000', '2000-11-23', 0, '01.2137/PRAJAB III/VI/LAN/2000', '2000-11-21', NULL, 'J 045874', '008892 9 010503', '2015-04-01', '2014-02-03', 't', 't', NULL, 0.0000, 0.0000, '2', 'A5EB03E2413AF6A0E040640A040252AD', 'A5EB03E2413AF6A0E040640A040252AD', 'A8ACA73B11E33912E040640A040269BB', '1999-05-01', '2000-12-01', '31', '2015-02-26', 4, NULL, NULL, '2000-11-22', '1103/TPK-LGS/KES/2000', NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, '2018-07-01', 'f', 29, 1, NULL, NULL, NULL, '708', '06', '2011-07-23 03:17:30', NULL, NULL, '0046/KV/13018/KEP/2008', '2008-10-16', 1441, NULL, 'f', '150298177', NULL, NULL, NULL, '1', 'DEPARTEMEN AGAMA', '111', NULL, '2', NULL, NULL, NULL, 'a5eb03e2-1ee8-f6a0-e040-640a040252ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA7D9181B3912E040640A040269BB', '8ae4828939f5c253013a01d1586253f7', 'A5EB03E23C33F6A0E040640A040252AD', 'A5EB03E23C33F6A0E040640A040252AD', '10', 'ff80808133391d07013339270fb50176', '01', NULL, '42', 'A5EB03E23027F6A0E040640A040252AD', '450011311', '196911022005022002', 'P', '813/174/KEP/P.CPNS/2005', '2005-03-17', 0, '821/KEP/PNS/60/2006', '2006-05-31', 0, '4169/LAN/0071/Diklat Prajabatan Gol. III/Badan Diklat Propinsi/2005', '2005-06-01', '2005-05-01', 'M110057', NULL, '2020-04-01', '2011-07-23', 'f', 'f', NULL, 398.8920, 30.4500, NULL, 'A5EB03E241AFF6A0E040640A040252AD', 'A5EB03E241AFF6A0E040640A040252AD', '8ae482074fbec1f1014fc9ea7da41f72', '2005-02-01', '2006-06-01', '31', '2015-10-01', 2, NULL, NULL, '2006-03-29', '340/TPK/RL/2006', NULL, NULL, NULL, '059/1.22/6.05/SMAN1/KP/2005', 'f', 'f', 'f', NULL, NULL, NULL, 'f', 20, 8, NULL, NULL, NULL, NULL, '07', '2011-07-23 03:45:10', NULL, NULL, '0003/KV/VII/21702/KEP/2008', '2008-10-16', 834, NULL, 'f', '450011311', NULL, NULL, NULL, '1', 'BUPATI REJANG LEBONG', '113', NULL, '1', NULL, 3715800.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA748B3063912E040640A040269BB', 'A5EB03E21D06F6A0E040640A040252AD', 'A5EB03E23AF9F6A0E040640A040252AD', 'A5EB03E23AF9F6A0E040640A040252AD', '01', 'A5EB03E2404DF6A0E040640A040252AD', '99', NULL, '42', 'A5EB03E225D3F6A0E040640A040252AD', '140153316', '194810081984022001', 'P', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'D 095320', '010246 1 140103', '2008-10-01', NULL, 't', 't', NULL, 0.0000, 0.0000, '2', 'A5EB03E24611F6A0E040640A040252AD', 'A5EB03E24611F6A0E040640A040252AD', 'A8ACA739B1173912E040640A040269BB', '1984-02-01', '1985-05-01', '22', '2008-08-01', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, '2013-11-01', 'f', 29, 9, NULL, NULL, NULL, '104', '08', '2011-07-23 00:29:22', NULL, NULL, '0022/KV/13015/KEP/2008', '2008-10-06', 207, NULL, 'f', '140153316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'a5eb03e2-1ef6-f6a0-e040-640a040252ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA7BECBF23912E040640A040269BB', 'A5EB03E21EC0F6A0E040640A040252AD', 'A5EB03E23D5EF6A0E040640A040252AD', 'A5EB03E23D5EF6A0E040640A040252AD', '15', 'A5EB03E23F3EF6A0E040640A040252AD', '01', NULL, '41', 'A5EB03E22A9CF6A0E040640A040252AD', '131933938', '196204251992102001', 'P', '1421/1/P&K-1992', '1992-09-30', 0, 'PK-821.12/979/TG-1993', '1993-12-21', 0, 'UP.1421/1/P&K-1992', '1992-09-30', NULL, 'F  336085', '0113332  030902', '2012-04-01', '2011-07-23', 't', 't', NULL, 394.6640, 18.0450, '1', 'A5EB03E24176F6A0E040640A040252AD', 'A5EB03E24176F6A0E040640A040252AD', '8ae4829d45e066a20145f4c4d54c52e6', '1992-10-01', '1994-01-01', '21', '2012-04-01', 2, NULL, NULL, '1993-06-23', '26/DPT/1993', NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, '2022-05-01', 'f', 28, 6, NULL, NULL, NULL, NULL, '12', '2011-07-23 03:07:58', NULL, NULL, '0001/KV/XII/21310/KEP/2008', '2008-10-16', 295, NULL, 'f', '131933938', NULL, NULL, NULL, NULL, NULL, '111', NULL, '1', NULL, 4475700.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA7C6B3973912E040640A040269BB', 'A5EB03E21CB1F6A0E040640A040252AD', 'A5EB03E23BFBF6A0E040640A040252AD', 'A5EB03E23BFBF6A0E040640A040252AD', '01', NULL, '01', NULL, '34', 'A5EB03E21F05F6A0E040640A040252AD', '390020057', '196302172002121003', 'P', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 'NO.L C44073', ' ', '2011-10-01', NULL, 't', 't', NULL, 266.4900, 36.2500, '1', 'A5EB03E240E3F6A0E040640A040252AD', 'A5EB03E240E3F6A0E040640A040252AD', '39384221EA896702E050640A29027F86', '2002-12-01', '2004-01-01', '31', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, '2023-03-01', 'f', 18, 3, NULL, NULL, NULL, NULL, '06', '2011-07-23 03:20:28', NULL, NULL, '0002/KV/VI/21107/KEP/2008', '2008-10-16', 1388, NULL, 'f', '390020057', NULL, NULL, NULL, NULL, NULL, '113', NULL, '1', NULL, 3677300.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA7B0D1D43912E040640A040269BB', '8ae4828939f5c253013a01d1586253f7', 'A5EB03E23C33F6A0E040640A040252AD', 'A5EB03E23C33F6A0E040640A040252AD', '10', 'ff80808133391d07013339270fb50176', '01', NULL, '42', 'A5EB03E23026F6A0E040640A040252AD', '131854864', '196406081989031014', 'P', '908/I.12.C1/C7/1989  ', '1989-06-20', 0, '12.425/1.12.C.1/C.7/1990', '1990-11-28', 0, '174/TK.II/PJ/LS/1990', '1990-08-10', NULL, 'E809190', NULL, '2014-10-01', '2015-06-01', 't', 't', NULL, 573.1380, 51.8600, '2', 'A5EB03E241AFF6A0E040640A040252AD', 'A5EB03E241AFF6A0E040640A040252AD', '8ae482a34f4b30d9014f4f18f91d4ce7', '1989-03-01', '1990-12-01', '23', '2014-10-01', 2, NULL, NULL, '1990-11-01', '900/755/Kaur/1990', NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, '2024-07-01', 'f', 23, 7, NULL, NULL, NULL, NULL, '05', '2011-07-23 02:48:16', NULL, NULL, '0001/KV/V/21872/KEP/2008/P', '2008-10-16', 1503, NULL, 'f', '131854864', '00', NULL, NULL, '1', 'KAKANWIL DEPDIKBUD PROVINSI LAMPUNG', '113', NULL, '1', NULL, 4250600.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."pns" VALUES ('A8ACA7CCA3EF3912E040640A040269BB', 'A5EB03E21CA0F6A0E040640A040252AD', 'A5EB03E23D5EF6A0E040640A040252AD', 'A5EB03E23D5EF6A0E040640A040252AD', '15', 'ff808081333324c50133391997e007ba', '01', NULL, '33', 'A5EB03E22085F6A0E040640A040252AD', NULL, '198407102009012004', 'P', '813/350/BKD/BUPATI-2009', '2009-01-01', 0, '821.1/96/BKD/BUPATI-2010', '2010-01-01', 0, '004/DIKLAT PRAJAB II/I-KONTRI/BANDIKLAT-2009', '2009-05-28', NULL, 'P.272633', NULL, '2017-10-01', '2017-07-10', 'f', 'f', NULL, 203.7470, 12.5800, NULL, 'A5EB03E24176F6A0E040640A040252AD', 'A5EB03E24176F6A0E040640A040252AD', 'A8ACA73BF98E3912E040640A040269BB', '2009-01-01', '2010-01-05', '22', '2017-10-01', 2, NULL, NULL, '2009-09-08', '116/TPK-RSUD/IX/2009', NULL, NULL, NULL, NULL, 'f', 'f', 'f', NULL, NULL, NULL, 'f', 6, 9, NULL, NULL, NULL, NULL, '12', '2011-07-23 03:28:20', NULL, NULL, NULL, NULL, 0, NULL, 'f', 'X09049724', NULL, NULL, NULL, '1', NULL, '113', NULL, '1', NULL, 2929100.00000000000000000000000000000000000000000000000000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pns_orang_istri
-- ----------------------------
DROP TABLE IF EXISTS "public"."pns_orang_istri";
CREATE TABLE "public"."pns_orang_istri" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tggl_menikah" timestamp(6),
  "akta_menikah" varchar(30) COLLATE "pg_catalog"."default",
  "tggl_cerai" timestamp(6),
  "akta_cerai" varchar(30) COLLATE "pg_catalog"."default",
  "posisi" numeric(2),
  "status" varchar(1) COLLATE "pg_catalog"."default",
  "is_pns" varchar(1) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(6),
  "no_sk_pensiun" varchar(30) COLLATE "pg_catalog"."default",
  "sinkro" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pns_orang_istri"."id" IS 'Menampung id pada tabel pns_orang_istri';
COMMENT ON COLUMN "public"."pns_orang_istri"."orang_id" IS 'menampung data id orang yang ada pada tabel pns_orang_istri';
COMMENT ON COLUMN "public"."pns_orang_istri"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel pns_orang_istri';
COMMENT ON COLUMN "public"."pns_orang_istri"."tggl_menikah" IS 'menampung data tanggal menikah pada tabel pns_orang_istri';
COMMENT ON COLUMN "public"."pns_orang_istri"."akta_menikah" IS 'menampung data akta menikah pasangan pns pada tabel pns_orang_istri';
COMMENT ON COLUMN "public"."pns_orang_istri"."tggl_cerai" IS 'menampung data tanggal cerai pada tabel pns_orang_istri';
COMMENT ON COLUMN "public"."pns_orang_istri"."akta_cerai" IS 'menampung data akta cerai pasangan pns pada tabel pns_orang_istri';
COMMENT ON COLUMN "public"."pns_orang_istri"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel pns_orang_istri';

-- ----------------------------
-- Records of pns_orang_istri
-- ----------------------------

-- ----------------------------
-- Table structure for rw_anak
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_anak";
CREATE TABLE "public"."rw_anak" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nip" varchar(18) COLLATE "pg_catalog"."default",
  "nama" varchar(300) COLLATE "pg_catalog"."default",
  "tgl_lahir" varchar(20) COLLATE "pg_catalog"."default",
  "tgl_meninggal" varchar(20) COLLATE "pg_catalog"."default",
  "posisi_ibu_ayah" varchar(50) COLLATE "pg_catalog"."default",
  "tanggugan" varchar(50) COLLATE "pg_catalog"."default",
  "jenis_anak" varchar(50) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_anak"."id" IS 'Menampung id pada tabel rw_anak';
COMMENT ON COLUMN "public"."rw_anak"."nip" IS 'menampung nip orang tua anak';
COMMENT ON COLUMN "public"."rw_anak"."nama" IS 'menampung nama anak';
COMMENT ON COLUMN "public"."rw_anak"."tgl_lahir" IS 'tanggal lahir anak';
COMMENT ON COLUMN "public"."rw_anak"."tgl_meninggal" IS 'tanggal meninggal anak';
COMMENT ON COLUMN "public"."rw_anak"."posisi_ibu_ayah" IS 'menampung id orang tua pada tabel orang';
COMMENT ON COLUMN "public"."rw_anak"."jenis_anak" IS 'menampung jenis anak (kandung, tiri, atau angkat)';
COMMENT ON COLUMN "public"."rw_anak"."path" IS 'menampung path file-file dokumen pendukung (seperti akta lahir anak)';

-- ----------------------------
-- Records of rw_anak
-- ----------------------------
INSERT INTO "public"."rw_anak" VALUES ('8ae483a8680d6d4001680e2478b91e63', '196012121999051001', 'NANDA UTINA RAHMAH', '15-07-2010', NULL, 'A8ACA7C55B393912E040640A040269BB', NULL, 'KANDUNG', NULL);

-- ----------------------------
-- Table structure for rw_angka_kredit
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_angka_kredit";
CREATE TABLE "public"."rw_angka_kredit" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nomor_sk" varchar(60) COLLATE "pg_catalog"."default",
  "tanggal_sk" timestamp(0),
  "bulan_mulai_penailan" numeric(2),
  "tahun_mulai_penailan" numeric(4),
  "bulan_selesai_penailan" numeric(2),
  "tahun_selesai_penailan" numeric(4),
  "kredit_utama_baru" numeric(9,3),
  "kredit_penunjang_baru" numeric(9,3),
  "kredit_baru_total" numeric(9,3),
  "rw_jabatan_id" varchar(32) COLLATE "pg_catalog"."default",
  "nama_jabatan" varchar(100) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "is_angka_kredit_pertama" varchar(1) COLLATE "pg_catalog"."default",
  "rw_jabatan_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_angka_kredit"."id" IS 'Menampung id pada tabel rw_angka_kredit';
COMMENT ON COLUMN "public"."rw_angka_kredit"."pns_id" IS 'menampung data id pns yang ada pada tabel rw_angka_kredit';
COMMENT ON COLUMN "public"."rw_angka_kredit"."tanggal_sk" IS 'menampung data tanggal sk pada tabel rw_angka_kredit';
COMMENT ON COLUMN "public"."rw_angka_kredit"."rw_jabatan_id" IS 'menampung data id rw_jabatan yang ada pada tabel rw_angka_kredit';
COMMENT ON COLUMN "public"."rw_angka_kredit"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_angka_kredit';
COMMENT ON COLUMN "public"."rw_angka_kredit"."rw_jabatan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai riwayat jabatan, merefer ke tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_angka_kredit"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat angka kredit';

-- ----------------------------
-- Records of rw_angka_kredit
-- ----------------------------
INSERT INTO "public"."rw_angka_kredit" VALUES ('ff80808135a9de990135ae73388008c6', 'A8ACA7BECBF23912E040640A040269BB', '800/010/DP/SEKRETARIAT-2011', '2011-12-31 00:00:00', 1, 2009, 12, 2011, 67.630, 3.000, 70.630, 'ff80808135a9de990135ae6b142702d5', 'Guru Dewasa Tk. I', '2012-02-24 15:21:22', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('ff808081325e911d013276c69afc7968', 'A8ACA7C6B3973912E040640A040269BB', '823/654/2011', '2011-06-30 00:00:00', 7, 2009, 6, 2011, 266.490, 36.250, 302.740, NULL, 'Kredit Mulai Sebagai Fung.Tertentu', '2011-09-17 16:32:30', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae48287358087350135865e527d3679', 'A8ACA7D9181B3912E040640A040269BB', '800//III.01/DP.1a/2012', '2012-01-16 00:00:00', 7, 2009, 12, 2011, 278.640, 23.250, 301.890, '8ae48287358087350135865b54273602', 'Guru Muda', '2012-02-16 20:23:22', '1', NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae48296397ab79601397be1463d293a', 'A8ACA78200513912E040640A040269BB', '800/13630/AK.TP.24/DISDIK/PEG/2012', '2012-06-30 00:00:00', 7, 2010, 6, 2012, 36.072, 1.400, 37.472, '8ae4828739c4b0070139d7379f9d4e54', 'Guru Madya Tingkat. I', '2012-08-31 15:11:09', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('ff80808135a9de990135ae7272920896', 'A8ACA7BECBF23912E040640A040269BB', '800/133/DP/TU-2009', '2008-12-30 00:00:00', 7, 2006, 12, 2008, 327.034, 15.045, 342.079, 'ff80808135a9de990135ae6b142702d5', 'Guru Dewasa Tk. I', '2012-02-24 15:20:32', '1', NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae4829b367d07650136818fb3156fd1', 'A8ACA7C2CE0F3912E040640A040269BB', '823.3/PAK/A.2/061/2012', '2012-01-02 00:00:00', 4, 2011, 1, 2012, 81.832, 59.555, 141.387, 'ff80808136a0d7e90136aa3305ba6b50', 'Guru Madya', '2012-04-05 15:19:46', '1', NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae482873924396101393133630f099f', 'A8ACA7B21CA13912E040640A040269BB', '823/1156.81/III.01/2009', '2009-07-15 00:00:00', 7, 2007, 6, 2009, 96.439, 1.700, 98.139, NULL, NULL, '2012-08-17 03:50:15', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae482873924396101393133fc4709a1', 'A8ACA7B21CA13912E040640A040269BB', '800/2620/III.01/PAK.II/2012', '2012-07-09 00:00:00', 7, 2009, 6, 2012, 69.665, 1.800, 71.465, '8ae4828739243961013931308064099a', 'Guru Muda Tk. I', '2012-08-17 03:50:54', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae4829b37c4b28f0137d518197d154c', 'A8ACA78200513912E040640A040269BB', '800/00069/AK.TP.24/Disdik/Peg/010', '2010-07-30 00:00:00', 11, 2008, 6, 2010, 137.798, 3.000, 140.798, '8ae4829b37c4b28f0137d50f0e98152c', 'Guru Madya', '2012-06-10 13:40:13', '1', NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae4828840c417ed0140dd95ea700380', 'A8ACA783E8653912E040640A040269BB', '800/07322/AK.TP.24/DISDIK/PEG/2013', '2013-06-30 00:00:00', 1, 2011, 6, 2013, 185.870, 0.000, 185.870, 'ff80808141007d280141396622556237', 'Guru Madya Tingkat. I', '2013-09-02 14:35:34', '1', NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae482884743925d0147577302ef23cf', 'A8ACA7B21CA13912E040640A040269BB', '800/5046/III.01/DP.1a/2013', '2013-07-10 00:00:00', 7, 2012, 6, 2013, 24.593, 0.250, 24.843, NULL, NULL, '2014-07-21 12:44:20', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae4828843bfa9a60143d0252711486a', 'A8ACA7C2CE0F3912E040640A040269BB', '897.4/4923/PAK/2013', '2013-12-31 00:00:00', 1, 2012, 12, 2013, 32.790, 4.000, 36.790, NULL, NULL, '2014-01-27 03:02:12', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae482894e0a5df3014e194993033a3c', 'A8ACA7D9181B3912E040640A040269BB', '823/370/D3/01/2015', '2015-07-01 00:00:00', 1, 2012, 6, 2015, 120.252, 7.200, 127.452, NULL, NULL, '2015-06-22 10:22:08', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('ff8080814fb893d5014fba75d2516303', 'A8ACA78200513912E040640A040269BB', '800/0376/AK.TP.14/Disdik/2015', '2015-06-30 00:00:00', 7, 2012, 6, 2015, 59.819, 0.750, 60.569, 'ff80808150141ee80150195d7a5d5c94', 'Guru Muda', '2015-09-11 10:32:28', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae483a76188d320016195796aea1ac6', 'A8ACA783E8653912E040640A040269BB', '800/0723/AK.TP.14/PEG/DISDIK/2017', '2018-01-02 00:00:00', 7, 2013, 12, 2017, 45.500, 3.460, 48.960, NULL, NULL, '2018-02-15 01:07:37', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae482865d885908015d8cd32c1f6f4c', 'A8ACA7B21CA13912E040640A040269BB', '800/193.a/III.01/PAK.I/2017', '2017-03-06 00:00:00', 7, 2013, 12, 2016, 35.500, 3.000, 38.500, NULL, NULL, '2017-07-29 12:27:28', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae483a760fe1c2e016102910e2b2465', 'A8ACA7C2CE0F3912E040640A040269BB', '823.3/PAK/A.2/8429/2016', '2016-12-30 00:00:00', 1, 2016, 12, 2016, 10.250, 1.500, 11.750, NULL, NULL, '2018-01-17 12:32:25', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae483a760fe1c2e016102909c412439', 'A8ACA7C2CE0F3912E040640A040269BB', '823.3/PAK/A.2/8428/2015', '2015-12-31 00:00:00', 1, 2015, 12, 2015, 16.250, 1.500, 17.750, NULL, NULL, '2018-01-17 12:31:56', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae483a760fe1c2e016102920c1824e3', 'A8ACA7C2CE0F3912E040640A040269BB', '823.3/PAK/C/158.1/2017', '2017-12-29 00:00:00', 1, 2017, 12, 2017, 9.500, 0.750, 10.250, NULL, NULL, '2018-01-17 12:33:30', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae483a760fe1c2e016102901a3d236a', 'A8ACA7C2CE0F3912E040640A040269BB', '823.3/PAK/A.2/8427/2014', '2014-12-31 00:00:00', 1, 2014, 12, 2014, 13.500, 1.500, 15.000, NULL, NULL, '2018-01-17 12:31:23', NULL, NULL, NULL);
INSERT INTO "public"."rw_angka_kredit" VALUES ('8ae483a664ee34bd0164ee937a281237', 'A8ACA78200513912E040640A040269BB', '800/0139/AK.TP.14/PEG/DISDIK/2018', '2018-06-29 00:00:00', 7, 2015, 6, 2018, 77.040, 2.250, 79.290, NULL, NULL, '2018-07-31 11:23:33', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rw_berkas_peremajaan
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_berkas_peremajaan";
CREATE TABLE "public"."rw_berkas_peremajaan" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "id_jenis_riwayat" varchar(32) COLLATE "pg_catalog"."default",
  "berkas" bytea,
  "format" varchar(10) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "jenis_riwayat_nama" varchar(255) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_berkas_peremajaan"."id" IS 'Menampung id pada tabel rw_berkas_peremajaan';
COMMENT ON COLUMN "public"."rw_berkas_peremajaan"."id_jenis_riwayat" IS 'menampung data id id_jenis_riwayat yang ada pada tabel rw_berkas_peremajaan';
COMMENT ON COLUMN "public"."rw_berkas_peremajaan"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_berkas_peremajaan';
COMMENT ON COLUMN "public"."rw_berkas_peremajaan"."jenis_riwayat_nama" IS 'kolom yang menyimpan id dari record-record yang diupdate pada tabel yang sama. berfungsi untuk melacak update record';
COMMENT ON COLUMN "public"."rw_berkas_peremajaan"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat berkas peremajaan';

-- ----------------------------
-- Records of rw_berkas_peremajaan
-- ----------------------------

-- ----------------------------
-- Table structure for rw_berkas_udm
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_berkas_udm";
CREATE TABLE "public"."rw_berkas_udm" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "id_jenis_riwayat" varchar(32) COLLATE "pg_catalog"."default",
  "berkas" bytea,
  "format" varchar(10) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "lokasi_file" varchar(255) COLLATE "pg_catalog"."default",
  "jenis_riwayat_nama" varchar(255) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_berkas_udm"."id" IS 'Menampung id pada tabel rw_berkas_udm';
COMMENT ON COLUMN "public"."rw_berkas_udm"."id_jenis_riwayat" IS 'menampung data id id_jenis_riwayat yang ada pada tabel rw_berkas_udm';
COMMENT ON COLUMN "public"."rw_berkas_udm"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_berkas_udm';
COMMENT ON COLUMN "public"."rw_berkas_udm"."jenis_riwayat_nama" IS 'kolom yang menyimpan id dari record-record yang diupdate pada tabel yang sama. berfungsi untuk melacak update record';
COMMENT ON COLUMN "public"."rw_berkas_udm"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat berkas update data mandiri';

-- ----------------------------
-- Records of rw_berkas_udm
-- ----------------------------

-- ----------------------------
-- Table structure for rw_cltn
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_cltn";
CREATE TABLE "public"."rw_cltn" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "cltn_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "sk_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "sk_tanggal" timestamp(0),
  "tanggal_awal" timestamp(0),
  "tanggal_akhir" timestamp(0),
  "tanggal_aktif" timestamp(0),
  "nomor_letter_bkn" varchar(30) COLLATE "pg_catalog"."default",
  "tanggal_letter_bkn" timestamp(0),
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "ncsistime" timestamp(0),
  "cltn_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_cltn"."id" IS 'Menampung id pada tabel rw_cltn';
COMMENT ON COLUMN "public"."rw_cltn"."cltn_id" IS 'menampung data id cltn yang ada pada tabel rw_cltn';
COMMENT ON COLUMN "public"."rw_cltn"."sk_nomor" IS 'menampung nomor sk cltn';
COMMENT ON COLUMN "public"."rw_cltn"."sk_tanggal" IS 'menampung data tanggal sk pada tabel rw_cltn';
COMMENT ON COLUMN "public"."rw_cltn"."tanggal_awal" IS 'menampung data tanggal awal pada tabel rw_cltn';
COMMENT ON COLUMN "public"."rw_cltn"."tanggal_akhir" IS 'menampung data tanggal akhir pada tabel rw_cltn';
COMMENT ON COLUMN "public"."rw_cltn"."tanggal_aktif" IS 'menampung data tanggal aktif pada tabel rw_cltn';
COMMENT ON COLUMN "public"."rw_cltn"."nomor_letter_bkn" IS 'menampung riwayat surat riwayat cuti luar tanggungan negara';
COMMENT ON COLUMN "public"."rw_cltn"."tanggal_letter_bkn" IS 'menampung data tanggal letter_bkn pada tabel rw_cltn';
COMMENT ON COLUMN "public"."rw_cltn"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_cltn';
COMMENT ON COLUMN "public"."rw_cltn"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_cltn';
COMMENT ON COLUMN "public"."rw_cltn"."cltn_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi cuti (di)luar tanggungan negara dari tabel cltn';
COMMENT ON COLUMN "public"."rw_cltn"."path" IS 'menampung path dokumen surat cltn';

-- ----------------------------
-- Records of rw_cltn
-- ----------------------------

-- ----------------------------
-- Table structure for rw_dp3
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_dp3";
CREATE TABLE "public"."rw_dp3" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "atasanpejabatpenilai_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "pejabatpenilai_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "pnsdinilai_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tahun" numeric(4),
  "kesetiaan" numeric(5,2),
  "prestasi_kerja" numeric(5,2),
  "tanggung_jawab" numeric(5,2),
  "ketaatan" numeric(5,2),
  "kejujuran" numeric(5,2),
  "kerjasama" numeric(5,2),
  "prakarsa" numeric(5,2),
  "kepemimpinan" numeric(5,2),
  "jumlah" numeric(5,2),
  "nilairatarata" numeric(5,2),
  "atasan_non_pns_id" varchar(32) COLLATE "pg_catalog"."default",
  "penilai_non_pns_id" varchar(32) COLLATE "pg_catalog"."default",
  "atasan_penilai_jabatan" varchar(100) COLLATE "pg_catalog"."default",
  "penilai_jabatan" varchar(100) COLLATE "pg_catalog"."default",
  "penilai_golongan" varchar(30) COLLATE "pg_catalog"."default",
  "atasan_penilai_golongan" varchar(30) COLLATE "pg_catalog"."default",
  "penilai_tmt_golongan" timestamp(0),
  "atasan_penilai_tmt_golongan" timestamp(0),
  "penilai_unor_nama" varchar(100) COLLATE "pg_catalog"."default",
  "atasan_penilai_unor_nama" varchar(100) COLLATE "pg_catalog"."default",
  "penilai_nama" varchar(100) COLLATE "pg_catalog"."default",
  "atasan_penilai_nama" varchar(100) COLLATE "pg_catalog"."default",
  "penilai_nip_nrp" varchar(30) COLLATE "pg_catalog"."default",
  "atasan_penilai_nip_nrp" varchar(30) COLLATE "pg_catalog"."default",
  "status_penilai" varchar(9) COLLATE "pg_catalog"."default",
  "status_atasan_penilai" varchar(9) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "jenis_jabatan" varchar(1) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_dp3"."id" IS 'Menampung id pada tabel rw_dp3';
COMMENT ON COLUMN "public"."rw_dp3"."atasanpejabatpenilai_orang_id" IS 'menampung data id atasanpejabatpenilai_orang yang ada pada tabel rw_dp3';
COMMENT ON COLUMN "public"."rw_dp3"."pejabatpenilai_orang_id" IS 'menampung data id pejabatpenilai_orang yang ada pada tabel rw_dp3';
COMMENT ON COLUMN "public"."rw_dp3"."pnsdinilai_orang_id" IS 'menampung data id pnsdinilai_orang yang ada pada tabel rw_dp3';
COMMENT ON COLUMN "public"."rw_dp3"."tahun" IS 'tahun penilaian';
COMMENT ON COLUMN "public"."rw_dp3"."kesetiaan" IS 'menampung hasil penilaian dalam kategori kesetiaan';
COMMENT ON COLUMN "public"."rw_dp3"."prestasi_kerja" IS 'menampung hasil penilaian dalam kategori prestasi kerja';
COMMENT ON COLUMN "public"."rw_dp3"."tanggung_jawab" IS 'menampung hasil penilaian dalam kategori tanggung jawab';
COMMENT ON COLUMN "public"."rw_dp3"."ketaatan" IS 'menampung hasil penilaian dalam kategori ketaatan';
COMMENT ON COLUMN "public"."rw_dp3"."kejujuran" IS 'menampung hasil penilaian dalam kategori kejujuran';
COMMENT ON COLUMN "public"."rw_dp3"."kerjasama" IS 'menampung hasil penilaian dalam kategori kerjasama';
COMMENT ON COLUMN "public"."rw_dp3"."prakarsa" IS 'menampung hasil penilaian dalam kategori prakarsa';
COMMENT ON COLUMN "public"."rw_dp3"."kepemimpinan" IS 'menampung hasil penilaian dalam kategori kepemimpinan';
COMMENT ON COLUMN "public"."rw_dp3"."jumlah" IS 'menampung jumlah hasil penilaian';
COMMENT ON COLUMN "public"."rw_dp3"."nilairatarata" IS 'menampung nilai rata-rata penilaian';
COMMENT ON COLUMN "public"."rw_dp3"."atasan_non_pns_id" IS 'menampung data id atasan_non_pns yang ada pada tabel rw_dp3';
COMMENT ON COLUMN "public"."rw_dp3"."penilai_non_pns_id" IS 'menampung data id penilai_non_pns yang ada pada tabel rw_dp3';
COMMENT ON COLUMN "public"."rw_dp3"."atasan_penilai_jabatan" IS 'menampung jabatan atasan langsung penilai';
COMMENT ON COLUMN "public"."rw_dp3"."penilai_jabatan" IS 'menampung jabatan penilai';
COMMENT ON COLUMN "public"."rw_dp3"."penilai_golongan" IS 'menampung golongan penilai';
COMMENT ON COLUMN "public"."rw_dp3"."atasan_penilai_golongan" IS 'menampung golongan atasan langsung penilai';
COMMENT ON COLUMN "public"."rw_dp3"."penilai_tmt_golongan" IS 'menampung data terhitung mulai tanggal penilai_golongan pada tabel rw_dp3';
COMMENT ON COLUMN "public"."rw_dp3"."atasan_penilai_tmt_golongan" IS 'menampung data terhitung mulai tanggal atasan_penilai_golongan pada tabel rw_dp3';
COMMENT ON COLUMN "public"."rw_dp3"."penilai_nip_nrp" IS 'menampung nip penilai';
COMMENT ON COLUMN "public"."rw_dp3"."atasan_penilai_nip_nrp" IS 'menampung nip/nrp (nomor registrasi pokok) atasan langsung penilai';
COMMENT ON COLUMN "public"."rw_dp3"."status_penilai" IS 'menampung status penilai (pns/bukan pns)';
COMMENT ON COLUMN "public"."rw_dp3"."status_atasan_penilai" IS 'menampung status atasan langsung penilai (pns/bukan pns)';
COMMENT ON COLUMN "public"."rw_dp3"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_dp3';
COMMENT ON COLUMN "public"."rw_dp3"."jenis_jabatan" IS 'menampung jenis jabatan yang dinilai';
COMMENT ON COLUMN "public"."rw_dp3"."path" IS 'menampung path file-file dokumen pendukung';

-- ----------------------------
-- Records of rw_dp3
-- ----------------------------

-- ----------------------------
-- Table structure for rw_golongan
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_golongan";
CREATE TABLE "public"."rw_golongan" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jenis_kp_id" varchar(3) COLLATE "pg_catalog"."default",
  "golongan_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "sk_nomor" varchar(70) COLLATE "pg_catalog"."default",
  "sk_tanggal" date,
  "nomor_letter_bkn" varchar(30) COLLATE "pg_catalog"."default",
  "tanggal_letter_bkn" date,
  "tmt_golongan" date,
  "jumlah_kredit_utama" numeric(8,3),
  "jumlah_kredit_tambahan" numeric(8,3),
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "status_selesai" bool,
  "mk_golongan_tahun" int2,
  "mk_golongan_bulan" int2,
  "ncsistime" timestamp(0),
  "sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "path" text COLLATE "pg_catalog"."default",
  "jenis_kp_nama" jsonb,
  "golongan_nama" jsonb
)
;
COMMENT ON COLUMN "public"."rw_golongan"."id" IS 'Menampung id pada tabel rw_golongan';
COMMENT ON COLUMN "public"."rw_golongan"."jenis_kp_id" IS 'menampung data id jenis_kp yang ada pada tabel rw_golongan';
COMMENT ON COLUMN "public"."rw_golongan"."golongan_id" IS 'menampung data id golongan yang ada pada tabel rw_golongan';
COMMENT ON COLUMN "public"."rw_golongan"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_golongan';
COMMENT ON COLUMN "public"."rw_golongan"."sk_nomor" IS 'menampung nomor sk perubahan golongan pada asn';
COMMENT ON COLUMN "public"."rw_golongan"."sk_tanggal" IS 'menampung data tanggal sk pada tabel rw_golongan';
COMMENT ON COLUMN "public"."rw_golongan"."tanggal_letter_bkn" IS 'menampung data tanggal letter_bkn pada tabel rw_golongan';
COMMENT ON COLUMN "public"."rw_golongan"."tmt_golongan" IS 'menampung data terhitung mulai tanggal golongan pada tabel rw_golongan';
COMMENT ON COLUMN "public"."rw_golongan"."jumlah_kredit_utama" IS 'mengampung jumlah kredit utama golongan';
COMMENT ON COLUMN "public"."rw_golongan"."jumlah_kredit_tambahan" IS 'menampung jumlah kredit tambahan golongan';
COMMENT ON COLUMN "public"."rw_golongan"."asal_id" IS 'menampung data id dari tabel rw_golongan_usul';
COMMENT ON COLUMN "public"."rw_golongan"."asal_nama" IS 'menampung data usulan riwayat golongan';
COMMENT ON COLUMN "public"."rw_golongan"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_golongan';
COMMENT ON COLUMN "public"."rw_golongan"."path" IS 'menampung path dokumen pendukung untuk golongan';
COMMENT ON COLUMN "public"."rw_golongan"."jenis_kp_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi jenis kenaikan pangkat, merefer ke tabel jenis_kp';
COMMENT ON COLUMN "public"."rw_golongan"."golongan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi golongan dari tabel golongan';

-- ----------------------------
-- Records of rw_golongan
-- ----------------------------
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6ABC6EED3D2CE040640A04026065', '211', '31', 'A8ACA7C6B3973912E040640A040269BB', '821.13/126/2003', NULL, 'GG-21115000027', NULL, '2002-12-01', NULL, NULL, NULL, 'MIGRASI', 't', 1, 1, '2011-07-23 22:40:52', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6AA7604F3D2CE040640A04026065', NULL, '22', 'A8ACA748B3063912E040640A040269BB', NULL, NULL, NULL, NULL, '1984-02-01', NULL, NULL, NULL, 'MIGRASI', 't', NULL, NULL, '2011-07-23 22:40:52', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6A9CF0D03D2CE040640A04026065', '211', '21', 'A8ACA7BECBF23912E040640A040269BB', 'up.1421/I/p&k-1992', NULL, 'II-2100517052', NULL, '1992-10-01', NULL, NULL, NULL, 'MIGRASI', 't', 0, 0, '2011-07-23 22:40:52', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6AE3B07B3D2CE040640A04026065', '203', '24', 'A8ACA7B21CA13912E040640A040269BB', '823/0610/IV.03/2010', '2010-04-01', 'FG-21809000271', '2010-03-12', '2010-04-01', 0.000, 0.000, NULL, 'MIGRASI', 't', 8, 3, '2011-07-23 22:49:58', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6ADF5ED33D2CE040640A04026065', '203', '21', 'A8ACA7C2CE0F3912E040640A040269BB', 'PEG.823.2/201/2005', NULL, 'GG-5117000419', NULL, '2005-10-01', NULL, NULL, NULL, 'MIGRASI', 't', 1, 10, '2011-07-23 22:49:58', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6AC29E983D2CE040640A04026065', '211', '12', 'A8ACA7C2CE0F3912E040640A040269BB', 'I470/I07.3b/KP4/2001', NULL, 'II-2100856460', NULL, '2000-12-01', NULL, NULL, NULL, 'MIGRASI', 't', 3, 0, '2011-07-23 22:40:52', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6AE3BBAB3D2CE040640A04026065', '202', '32', 'A8ACA7BECBF23912E040640A040269BB', '823/483/BKD-2004', NULL, 'GG-5404000749', NULL, '2004-10-01', NULL, NULL, NULL, 'MIGRASI', 't', 7, 0, '2011-07-23 22:49:58', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6AF1A8433D2CE040640A04026065', '202', '33', 'A8ACA7C6B3973912E040640A040269BB', 'Peg.823.3/05/200902', NULL, 'GG 21107000239', NULL, '2009-10-01', NULL, NULL, NULL, 'MIGRASI', 't', 6, 8, '2011-07-23 22:49:58', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA8B222983912E040640A040269BB', NULL, '33', 'A8ACA7601BAF3912E040640A040269BB', NULL, NULL, NULL, NULL, '2000-04-01', NULL, NULL, NULL, NULL, 't', NULL, NULL, '2011-07-23 07:47:46', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA8B222993912E040640A040269BB', NULL, '41', 'A8ACA7601BAF3912E040640A040269BB', 'KP.04.01.2.1.A.0670', '2008-06-12', 'AG 0240004662', '2008-03-13', '2008-04-01', NULL, NULL, NULL, NULL, 't', NULL, NULL, '2011-07-23 07:47:46', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6AA2DBF03D2CE040640A04026065', '211', '31', 'A8ACA7C55B393912E040640A040269BB', 'WA/I.b/KP.003/2605/1999', NULL, 'II-2300078586', NULL, '1999-05-01', NULL, NULL, NULL, 'MIGRASI', 't', NULL, NULL, '2011-07-23 22:40:52', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA8B3267E3912E040640A040269BB', '202', '42', 'A8ACA7601BAF3912E040640A040269BB', 'KP.04.01.2.1.A.0583', '2010-03-15', 'AI 13015005180', '2010-03-05', '2010-04-01', 590.500, 0.000, NULL, NULL, 't', 27, 4, '2011-07-23 07:47:49', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6AAB25883D2CE040640A04026065', NULL, '21', 'A8ACA7601BAF3912E040640A040269BB', NULL, NULL, NULL, NULL, '1977-12-01', NULL, NULL, NULL, 'MIGRASI', 't', NULL, NULL, '2011-07-23 22:40:52', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA8B2338C3912E040640A040269BB', NULL, '34', 'A8ACA7601BAF3912E040640A040269BB', NULL, NULL, NULL, NULL, '2003-04-01', NULL, NULL, NULL, NULL, 't', NULL, NULL, '2011-07-23 07:47:46', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff8080813316bb3c013319cbfcba26fc', '202', '34', 'A8ACA7C6B3973912E040640A040269BB', 'Peg.823/F/002/2012', NULL, 'GG-21116000008', '2011-10-19', '2011-10-01', 0.000, 0.000, 'ff8080813290fadf01329586648c276e', 'PROSEDUR_KP', 't', 8, 10, '2011-10-19 08:29:16', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff808081325e8a690132809bc6987e4e', '201', '34', 'A8ACA7C55B393912E040640A040269BB', 'Peg. 823.3/408/2011', '2011-09-28', 'GG-21173000083', '2011-09-19', '2011-10-01', NULL, NULL, 'ff808081323d36c40132431289426afb', 'PROSEDUR_KP', 't', 5, 7, '2011-09-19 14:20:12', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae4828936ee777e0137012d5c0c40ed', '203', '31', 'A8ACA783E8653912E040640A040269BB', '8232./117-BKD/KEP-2011', '2011-03-28', 'DG-23216000760', '2011-03-16', '2011-04-01', 0.000, 0.000, NULL, 'MUTASI_GOLONGAN', 't', 5, 9, '2012-04-30 09:56:19', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff8080813619ede801361ada68241199', '101', '34', 'A8ACA7D9181B3912E040640A040269BB', '823.3/721/LTD.3/03/2012', '2012-03-20', 'FG-21872000215', '2012-03-16', '2012-04-01', 0.000, 0.000, '8ae482873580873501358654626934e4', 'PROSEDUR_KP', 't', 12, 8, '2012-03-16 16:33:03', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff80808136a0d7e90136aa3305ba6b4d', '203', '24', 'A8ACA7C2CE0F3912E040640A040269BB', NULL, NULL, NULL, NULL, '2005-10-01', NULL, NULL, '8ae4829b367d076501368190c95f6fdc', 'DATA_COMPLETION', 't', 8, 4, '2012-04-13 12:35:32', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff80808136a0d7e90136aa3305ba6b4e', '203', '31', 'A8ACA7C2CE0F3912E040640A040269BB', 'BKPP.823.3/01/2012', '2012-04-19', 'GG-21114000672', '2012-03-30', '2012-04-01', NULL, NULL, '8ae4829b367d076501368190c95f6fdc', 'PROSEDUR_KP', 't', 3, 4, '2012-04-13 12:35:32', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff80808136c3bd740136c40703f60a9a', '101', '31', 'A8ACA78200513912E040640A040269BB', '832.3/989-BKD/KEP/2010', '2010-11-08', 'DG. 23216001871', '2010-08-05', '2010-10-01', 0.000, 0.000, NULL, 'MUTASI_GOLONGAN', 't', 8, 9, '2012-04-18 12:57:35', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff80808137fd9c4a0137fdfa182b0754', '202', '34', 'A8ACA7BECBF23912E040640A040269BB', '831/48/BKD/BUPATI-2010', NULL, 'MK-2131000001', NULL, '2009-04-01', NULL, NULL, '8ae4829635aa12a30135b968c5742354', 'DATA_COMPLETION', 't', 21, 6, '2012-06-18 12:04:13', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff80808137fd9c4a0137fdfa182b0755', '202', '41', 'A8ACA7BECBF23912E040640A040269BB', '823.4/1976/BKD-2012', '2012-06-21', 'MG-21310000315', '2012-03-30', '2012-04-01', 394.000, 18.000, '8ae4829635aa12a30135b968c5742354', 'PROSEDUR_KP', 't', 21, 6, '2012-06-18 12:04:13', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff80808147d3d8710147d3e883ee01bf', '202', '32', 'A8ACA7B21CA13912E040640A040269BB', '823.3/468/IV.03/2014', '2014-09-15', 'FG-21809000585', '2014-08-14', '2014-10-01', 0.000, 0.000, '8ae4829c475852aa01475c73f90513d2', 'PROSEDUR_KP', 't', 7, 9, '2014-08-14 16:45:36', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff808081456d9b7201456ed72a7a4c16', '202', '32', 'A8ACA7C2CE0F3912E040640A040269BB', 'BKPP.823.3/215/2014', '2014-04-16', 'GG-21114000657', '2014-03-28', '2014-04-01', 114.622, 63.555, '8ae4828843bfa9a60143d0206e0e47db', 'PROSEDUR_KP', 't', 5, 4, '2014-04-17 15:39:25', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae48289397af6e90139944cb35c5c83', '203', '31', 'A8ACA7B21CA13912E040640A040269BB', '823.3/3591/IV.03/2012', '2012-09-20', 'FG-21809000885', '2012-09-04', '2012-10-01', NULL, NULL, '8ae4829b3951329301395221e917149d', 'PROSEDUR_KP', 't', 5, 9, '2012-09-05 09:40:16', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae4828739c4b0070139d7379f9c4e52', '202', '32', 'A8ACA78200513912E040640A040269BB', '823.3/Kep.365-BKD/2012', '2012-09-24', 'DG-23216002157', '2012-09-18', '2012-10-01', 0.000, 0.000, '8ae4829b397a7e9b01397c6843b631f5', 'PROSEDUR_KP', 't', 10, 9, '2012-09-18 09:31:50', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff80808141007d280141396622536236', '202', '32', 'A8ACA783E8653912E040640A040269BB', '823.3/Kep.632-BKD/2013', '2013-11-15', 'DG-23216003400', '2013-09-20', '2013-10-01', 0.000, 0.000, '8ae4828840c417ed0140e2dd9d526b4d', 'PROSEDUR_KP', 't', 8, 3, '2013-09-20 10:24:56', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff80808150141ee80150195d7a595c93', '202', '33', 'A8ACA78200513912E040640A040269BB', '823/Kep.1428-BKD/2015', '2015-09-30', 'DG-23216001659', '2015-09-28', '2015-10-01', 0.000, 0.000, 'ff8080814fb893d5014fba745de9617e', 'PROSEDUR_KP', 't', 13, 9, '2015-09-29 20:49:29', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('ff8080814c0a33f1014c0c00b69b3195', '201', '41', 'A8ACA7C55B393912E040640A040269BB', 'Peg.823.4/30/2015', '2015-04-14', 'GG-21173000319', '2015-03-13', '2015-04-01', NULL, NULL, '8ae4829d4b358ad3014b4983b7cd6ec4', 'PROSEDUR_KP', 't', 20, 10, '2015-03-12 10:21:56', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a65004964a015009a8ef86310d', '202', '23', 'A8ACA7BECBF23912E040640A040269BB', '13-03/00018/KEP/X/1997/T', '1997-09-11', '5121/108.24/KP-1997', '1997-07-22', '1997-10-01', NULL, NULL, NULL, NULL, 't', 5, 0, '2017-01-12 16:17:33', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482874f69a883014f6e3e38cd4dc4', '202', '41', 'A8ACA7D9181B3912E040640A040269BB', '823.4/1417/II.10/2015', '2015-11-09', 'FG-21872000805', '2015-08-10', '2015-10-01', 0.000, 0.000, '8ae482894e0a5df3014e194463893017', 'PROSEDUR_KP', 't', 16, 2, '2015-08-27 15:20:15', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a750863695015087d4d1c63edd', '202', '32', 'A8ACA7C6B3973912E040640A040269BB', 'Peg.823.3/07/2006', '2006-10-01', 'GG 5106000953', '2006-09-27', '2006-10-18', NULL, NULL, NULL, NULL, 't', 3, 10, '2016-11-30 09:48:00', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a6507463c1015075a980307db1', '101', '22', 'A8ACA7C2CE0F3912E040640A040269BB', 'BKPP.823.2/07/2009', '2009-10-02', 'GG-21114000021', '2009-09-30', '2009-10-01', NULL, NULL, NULL, NULL, 't', 5, 10, '2016-11-30 09:17:02', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a45074bcd4015078e53f587344', '101', '32', 'A8ACA7C55B393912E040640A040269BB', 'WA/I.b/KP.07.01/1192/2003', '2003-11-08', 'GA-0250000615', '2003-09-30', '2003-10-01', NULL, NULL, NULL, NULL, 't', 4, 5, '2016-11-30 12:39:05', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6AD221813D2CE040640A04026065', '101', '33', 'A8ACA7C55B393912E040640A040269BB', 'KW.01.1/2/KP.07.1/564/2007', NULL, 'GG-0250000920', NULL, '2007-10-01', NULL, NULL, NULL, 'MIGRASI', 't', 5, 8, '2011-07-23 22:49:58', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a54ff9fdf6014ffafad4782345', '202', '33', 'A8ACA7BECBF23912E040640A040269BB', '823.3/75/BKD/BUPATI-2006', '2006-09-30', 'GG-5418000315', '2006-09-14', '2006-10-01', NULL, NULL, NULL, NULL, 't', 9, 0, '2017-01-12 16:14:47', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a65004964a015009a62f252edc', '202', '22', 'A8ACA7BECBF23912E040640A040269BB', '13-03/00023/kep/X/1995', '1996-01-03', '7112/108.4/c-1995', '1995-08-21', '1995-10-01', NULL, NULL, NULL, NULL, 't', 3, 0, '2017-01-12 16:17:31', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a750a139eb0150a661d8fc4242', '202', '23', 'A8ACA7B21CA13912E040640A040269BB', '823.2/147/IV.04/2007', '2007-08-27', 'FG. 5901002055', '2007-08-21', '2007-10-01', NULL, NULL, NULL, NULL, 't', 5, 9, '2017-01-25 08:47:25', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a65004964a015009ab3d0b3292', '202', '24', 'A8ACA7BECBF23912E040640A040269BB', 'VI-13-03/00144/KEP/X/1999/T', '2000-02-14', '3976/108.24/KP-1999', '1999-09-11', '1999-10-01', NULL, NULL, NULL, NULL, 't', 7, 0, '2017-01-13 09:17:32', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a54ff9fdf6014ffafd72c925c9', '202', '31', 'A8ACA7BECBF23912E040640A040269BB', '823/121/BKD-2002', '2002-05-01', 'GB-5404000779', '2001-12-31', '2001-10-01', NULL, NULL, NULL, NULL, 't', 4, 0, '2017-01-13 09:17:42', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae483a765a13ad20165e7de2a7d5715', '202', '34', 'A8ACA78200513912E040640A040269BB', '823/Kep.1450-BKPPD/2018', '2018-09-21', 'DG-23216001885', '2018-09-12', '2018-10-01', 0.000, 0.000, '8ae483a664ee34bd0164ee944cd913e4', 'PROSEDUR_KP', 't', 16, 9, '2018-09-17 21:10:28', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA8A70FFD3912E040640A040269BB', '211', '31', 'A8ACA7D9181B3912E040640A040269BB', '813/174/kep/CPNS/2005', NULL, 'FG-21800001487', NULL, '2005-02-01', NULL, NULL, NULL, NULL, 't', 2, 8, '2011-07-23 07:47:00', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae483a8611948f8016126297db008c5', '202', '33', 'A8ACA7C2CE0F3912E040640A040269BB', 'PEG.823.3/02/2018', '2018-02-12', 'NG-21114000227', '2018-01-24', '2018-04-01', 0.000, 0.000, '8ae483a760fe1c2e01610293d6f525bb', 'PROSEDUR_KP', 't', 17, 2, '2018-01-24 10:26:37', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482a6516684e301517a3051b808fa', '202', '32', 'A8ACA7D9181B3912E040640A040269BB', '823/132/KEP/10/2007', '2007-09-20', 'HG-5803000428', '2007-09-10', '2007-10-01', NULL, NULL, NULL, NULL, 't', 5, 4, '2017-01-24 11:07:37', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8BF6AD39A753D2CE040640A04026065', '202', '33', 'A8ACA7D9181B3912E040640A040269BB', '366 TAHUN 2006', NULL, 'HG-21702000301', NULL, '2009-10-01', NULL, NULL, NULL, 'MIGRASI', 't', 7, 4, '2011-07-23 22:49:58', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae482875da6eda9015da746d42941fb', '202', '33', 'A8ACA7B21CA13912E040640A040269BB', '823/1020/V.04/2017', '2017-09-25', 'FG-21809000439', '2017-08-03', '2017-10-01', 0.000, 0.000, '8ae482865d885908015d8cd70a3a7096', 'PROSEDUR_KP', 't', 15, 3, '2017-08-03 15:47:03', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae483a562687595016286a5242e4540', '202', '33', 'A8ACA783E8653912E040640A040269BB', '823/Kep.614-BKPPD/2018', '2018-04-24', 'DG-23216000607', '2018-03-28', '2018-04-01', 0.000, 0.000, '8ae483a76188d3200161957b26161af8', 'PROSEDUR_KP', 't', 12, 9, '2018-04-02 21:10:32', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae483c570e69a3a0170f75de43462cd', '202', '42', 'A8ACA7D9181B3912E040640A040269BB', NULL, NULL, 'FG-21800000735', '2020-03-20', '2020-04-01', 0.000, 0.000, '8ae483a67009b60601701852b20544e4', 'PROSEDUR_KP', 't', 20, 8, '2020-03-20 16:54:50', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('8ae483a67060b8310170a5e3328e6def', '202', '34', 'A8ACA7B21CA13912E040640A040269BB', NULL, NULL, 'FG-21809000091', '2020-03-04', '2020-04-01', 0.000, 0.000, '8ae483a5701f5b3d0170294953942081', 'PROSEDUR_KP', 't', 17, 9, '2020-03-04 21:11:30', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA8A4CD483912E040640A040269BB', NULL, '34', 'A8ACA748B3063912E040640A040269BB', NULL, NULL, NULL, NULL, '2000-04-01', NULL, NULL, NULL, NULL, 't', NULL, NULL, '2011-07-23 07:46:49', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA88B8C543912E040640A040269BB', '211', '21', 'A8ACA78200513912E040640A040269BB', '813/277-BKD/Kep/2007', NULL, 'DG.6104000911', NULL, '2007-01-01', NULL, NULL, NULL, NULL, 't', 3, 7, '2011-07-23 07:45:23', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA88B9DE93912E040640A040269BB', '211', '21', 'A8ACA783E8653912E040640A040269BB', '813/277-BKD/KEP/2007', '2007-11-22', '-', '2007-01-01', '2007-01-01', 0.000, 0.000, NULL, NULL, 't', 2, 0, '2011-07-23 07:45:24', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA89A4EE63912E040640A040269BB', '211', '22', 'A8ACA7B21CA13912E040640A040269BB', '800/41/IV.04/II/2005', NULL, 'FG-21809000885', NULL, '2005-01-01', NULL, NULL, NULL, NULL, 't', 3, 0, '2011-07-23 07:46:13', '1', NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA8A4EB4C3912E040640A040269BB', '101', '42', 'A8ACA748B3063912E040640A040269BB', 'KP.04.01.2.1.A.1057', '2008-09-24', 'AI - 13015001700', '2008-09-12', '2008-10-01', 0.000, 0.000, NULL, NULL, 't', 29, 9, '2011-07-23 07:46:50', NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_golongan" VALUES ('A8ACA8A4CD493912E040640A040269BB', NULL, '41', 'A8ACA748B3063912E040640A040269BB', '894/MENKES/SK/VIII/2004', '2004-08-11', 'AG0240001529', '2004-03-31', '2004-04-01', NULL, NULL, NULL, NULL, 't', NULL, NULL, '2011-07-23 07:46:49', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rw_honorer
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_honorer";
CREATE TABLE "public"."rw_honorer" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pendidikan_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pendidikan_tertinggi_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "instansi_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nip_hn" varchar(20) COLLATE "pg_catalog"."default",
  "tmt_tahun" numeric(2),
  "tmt_bulan" numeric(2),
  "unor_id" varchar(32) COLLATE "pg_catalog"."default",
  "tahun_lulus_pddk_awal" numeric(4),
  "tahun_lulus_pddk_ttg" numeric(4),
  "tmt_cptahun" numeric(2),
  "tmt_cpbulan" numeric(2),
  "cp_nama" varchar(55) COLLATE "pg_catalog"."default",
  "cp_tgl_lhr" timestamp(0),
  "alasan_btl_tms" varchar(100) COLLATE "pg_catalog"."default",
  "satuan_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "usul_pengadaan_id" varchar(32) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "kabupaten_hn_id" varchar(32) COLLATE "pg_catalog"."default",
  "tingkat_pendidikan_id" varchar(2) COLLATE "pg_catalog"."default",
  "nama_hn" varchar(50) COLLATE "pg_catalog"."default",
  "tgl_lhr_hn" timestamp(0),
  "status_hn" varchar(1) COLLATE "pg_catalog"."default",
  "honorer_id" varchar(32) COLLATE "pg_catalog"."default",
  "jabatan_fungsional_umum_id" varchar(32) COLLATE "pg_catalog"."default",
  "ujian" varchar(5) COLLATE "pg_catalog"."default",
  "alasan_ujian" varchar(255) COLLATE "pg_catalog"."default",
  "tahun" numeric(4),
  "cek_status" numeric(1),
  "pendidikan_nama" jsonb,
  "instansi_nama" jsonb,
  "pendidikan_tertinggi_nama" jsonb,
  "unor_nama" jsonb,
  "satuan_kerja_nama" jsonb,
  "tingkat_pendidikan_nama" jsonb,
  "jabatan_fungsional_umum_nama" jsonb,
  "kabupaten_hn_nama" jsonb,
  "usul_pengadaan_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_honorer"."id" IS 'Menampung id pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."pendidikan_id" IS 'menampung data id pendidikan yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."pendidikan_tertinggi_id" IS 'menampung data id pendidikan_tertinggi yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."instansi_id" IS 'menampung data id instansi yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."nip_hn" IS 'menampung data nip honorer';
COMMENT ON COLUMN "public"."rw_honorer"."tmt_tahun" IS 'menghimpun data terhitung mulai tanggal tahun yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."tmt_bulan" IS 'menghimpun data terhitung mulai tanggal bulan yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."unor_id" IS 'menampung data id unor yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."tahun_lulus_pddk_awal" IS 'menampung tahun lulus pendidikan awal pegawai honorer';
COMMENT ON COLUMN "public"."rw_honorer"."tahun_lulus_pddk_ttg" IS 'menampung tahun lulus pendidikan tertinggi pegawai honorer';
COMMENT ON COLUMN "public"."rw_honorer"."tmt_cptahun" IS 'menghimpun data terhitung mulai tanggal cptahun yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."tmt_cpbulan" IS 'menghimpun data terhitung mulai tanggal cpbulan yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."cp_nama" IS 'menampung data nama cpns pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."cp_tgl_lhr" IS 'menampung data tanggal lahir cpns pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."alasan_btl_tms" IS 'menampung data alasan_btl_tms yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."satuan_kerja_id" IS 'menampung data id satuan_kerja yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."usul_pengadaan_id" IS 'menampung data id usul_pengadaan yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."kabupaten_hn_id" IS 'menampung data id kabupaten_hn yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."tingkat_pendidikan_id" IS 'menampung data id tingkat_pendidikan yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."nama_hn" IS 'menampung data nama pegawai honorer';
COMMENT ON COLUMN "public"."rw_honorer"."tgl_lhr_hn" IS 'menampung data tanggal lahir honorer pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."status_hn" IS 'menampung status pegawai honorer';
COMMENT ON COLUMN "public"."rw_honorer"."honorer_id" IS 'menampung data id honorer yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."jabatan_fungsional_umum_id" IS 'menampung data id jabatan_fungsional_umum yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."ujian" IS 'menampung jenis ujian dari pegawai honorer';
COMMENT ON COLUMN "public"."rw_honorer"."alasan_ujian" IS 'menampung data alasan_ujian yang ada pada tabel rw_honorer';
COMMENT ON COLUMN "public"."rw_honorer"."tahun" IS 'menampung tahun masuk dari pegawai honorer';
COMMENT ON COLUMN "public"."rw_honorer"."pendidikan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pendidikan, merefer ke tabel pendidikan';
COMMENT ON COLUMN "public"."rw_honorer"."instansi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai instansi subjek yang bersangkutan, ref dari tabel instansi';
COMMENT ON COLUMN "public"."rw_honorer"."pendidikan_tertinggi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pendidikan tertinggi, merefer ke tabel pendidikan';
COMMENT ON COLUMN "public"."rw_honorer"."unor_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi. merefer ke tabel unor';
COMMENT ON COLUMN "public"."rw_honorer"."satuan_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."rw_honorer"."tingkat_pendidikan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai tingkat pendidikan. merefer ke tabel tingkat_pendidikan';
COMMENT ON COLUMN "public"."rw_honorer"."jabatan_fungsional_umum_nama" IS 'kolom hasil denormalisasi yang menyimpan infromasi jabatan fungsional umum, merefer ke tabel jabatan_fungsional_umum';
COMMENT ON COLUMN "public"."rw_honorer"."kabupaten_hn_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi tempat lahir subjek yang bersangkutan. merefer ke tabel lokasi';
COMMENT ON COLUMN "public"."rw_honorer"."usul_pengadaan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai usul pengadaan. merefer ke tabel usul';
COMMENT ON COLUMN "public"."rw_honorer"."path" IS 'menampung path dokumen penduduk milik pegawai honorer';

-- ----------------------------
-- Records of rw_honorer
-- ----------------------------

-- ----------------------------
-- Table structure for rw_hukuman_disiplin
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_hukuman_disiplin";
CREATE TABLE "public"."rw_hukuman_disiplin" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "golongan_id" varchar(2) COLLATE "pg_catalog"."default",
  "kedudukan_hukum_id" varchar(2) COLLATE "pg_catalog"."default",
  "jenis_hukuman_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "sk_nomor" varchar(70) COLLATE "pg_catalog"."default",
  "sk_tanggal" timestamp(0),
  "hukuman_tanggal" timestamp(0),
  "masa_tahun" numeric(2),
  "masa_bulan" numeric(2),
  "akhir_hukum_tanggal" timestamp(0),
  "hukdis_yang_diberhentikan_id" varchar(32) COLLATE "pg_catalog"."default",
  "nomor_pp" varchar(50) COLLATE "pg_catalog"."default",
  "golongan_lama" varchar(2) COLLATE "pg_catalog"."default",
  "sk_pembatalan_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "sk_pembatalan_tanggal" timestamp(0),
  "ncsistime" timestamp(0),
  "alasan_hukuman_disiplin_id" varchar(32) COLLATE "pg_catalog"."default",
  "path" text COLLATE "pg_catalog"."default",
  "golongan_nama" jsonb,
  "jenis_hukuman_nama" jsonb,
  "kedudukan_hukum_nama" jsonb,
  "alasan_hukuman_disiplin_nama" jsonb,
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."id" IS 'Menampung id pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."golongan_id" IS 'menampung data id golongan yang ada pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."kedudukan_hukum_id" IS 'menampung data id kedudukan_hukum yang ada pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."jenis_hukuman_id" IS 'menampung data id jenis_hukuman yang ada pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."sk_nomor" IS 'menampung sk nomor dari hukdis';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."sk_tanggal" IS 'menampung data tanggal sk pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."hukuman_tanggal" IS 'menampung data tanggal hukuman pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."masa_tahun" IS 'menampung riwayat masa tahun hukdis';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."masa_bulan" IS 'menampung riwayat masa bulan hukdis';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."akhir_hukum_tanggal" IS 'menampung data tanggal akhir_hukum pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."hukdis_yang_diberhentikan_id" IS 'menampung data id hukdis_yang_diberhentikan yang ada pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."nomor_pp" IS 'menampung nomor peraturan pemerintah untuk dasar hukdis';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."golongan_lama" IS 'menampung riwayat golongan lama ';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."sk_pembatalan_nomor" IS 'menampung riwayat pembatalan nomor sk hukdis';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."sk_pembatalan_tanggal" IS 'menampung data tanggal sk_pembatalan pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."alasan_hukuman_disiplin_id" IS 'menampung data id alasan_hukuman_disiplin yang ada pada tabel rw_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."path" IS 'menampung dokumen pendukung untuk riwayat hukdis';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."golongan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi golongan dari tabel golongan';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."jenis_hukuman_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis hukuman disiplin, merefer ke tabel jenis_hukuman';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."kedudukan_hukum_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi kedudukan hukum dari subjek yang bersangkutan, merefer ke tabel kedudukan_hukum';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."alasan_hukuman_disiplin_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi alasan hukuman disiplin yang dikenakan kepada pns dari tabel alasan_hukuman_disiplin';
COMMENT ON COLUMN "public"."rw_hukuman_disiplin"."status_pns" IS 'menampung riwayat status pns di tabel riwayat hukdis';

-- ----------------------------
-- Records of rw_hukuman_disiplin
-- ----------------------------

-- ----------------------------
-- Table structure for rw_jabatan
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_jabatan";
CREATE TABLE "public"."rw_jabatan" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jabatan_fungsional_id" varchar(32) COLLATE "pg_catalog"."default",
  "unor_id" varchar(32) COLLATE "pg_catalog"."default",
  "eselon_id" varchar(2) COLLATE "pg_catalog"."default",
  "instansi_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jenis_jabatan_id" numeric(1),
  "jabatan_fungsional_umum_id" varchar(32) COLLATE "pg_catalog"."default",
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tmt_jabatan" timestamp(0),
  "nomor_sk" varchar(70) COLLATE "pg_catalog"."default",
  "tanggal_sk" timestamp(0),
  "nama_unor" varchar(250) COLLATE "pg_catalog"."default",
  "satuan_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "nama_jabatan" varchar(250) COLLATE "pg_catalog"."default",
  "tmt_pelantikan" timestamp(0),
  "sinkro_pupns" varchar(1) COLLATE "pg_catalog"."default",
  "no_sk_sertifikasi" varchar(70) COLLATE "pg_catalog"."default",
  "tanggal_sk_sertifikasi" date DEFAULT to_date('0001-01-01 00:00:00'::text, 'YYYY-MM-DD HH24:MI:SS'::text),
  "tanggal_berlaku" date DEFAULT to_date('0001-01-01 00:00:00'::text, 'YYYY-MM-DD HH24:MI:SS'::text),
  "tanggal_expired" date DEFAULT to_date('0001-01-01 00:00:00'::text, 'YYYY-MM-DD HH24:MI:SS'::text),
  "path" text COLLATE "pg_catalog"."default",
  "is_syarat_jabatan" varchar(1) COLLATE "pg_catalog"."default",
  "tipe" varchar(1) COLLATE "pg_catalog"."default",
  "id_riwayat_update" varchar(32) COLLATE "pg_catalog"."default",
  "status_sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "jabatan_fungsional_nama" jsonb,
  "instansi_nama" jsonb,
  "jenis_jabatan_nama" varchar(255) COLLATE "pg_catalog"."default",
  "jabatan_fungsional_umum_nama" jsonb,
  "satuan_kerja_nama" jsonb,
  "unor_nama" jsonb,
  "eselon_nama" jsonb,
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_jabatan"."id" IS 'Menampung id pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."jabatan_fungsional_id" IS 'menampung data id jabatan_fungsional yang ada pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."unor_id" IS 'menampung data id unor yang ada pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."eselon_id" IS 'menampung data id eselon yang ada pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."instansi_id" IS 'menampung data id instansi yang ada pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."jenis_jabatan_id" IS 'menampung data id jenis_jabatan yang ada pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."jabatan_fungsional_umum_id" IS 'menampung data id jabatan_fungsional_umum yang ada pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."tmt_jabatan" IS 'menampung data terhitung mulai tanggal jabatan pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."nomor_sk" IS 'menampung riwayat nomor sk dari jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."tanggal_sk" IS 'menampung data tanggal sk pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."nama_unor" IS 'menampung nama unor di tabel riwayat jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."satuan_kerja_id" IS 'menampung data id satuan_kerja yang ada pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."asal_id" IS 'menampung data id dari tabel rw_jabatan_usul';
COMMENT ON COLUMN "public"."rw_jabatan"."asal_nama" IS 'menampung informasi mengenai asal record pada tabel rw_jabatan_usul';
COMMENT ON COLUMN "public"."rw_jabatan"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."nama_jabatan" IS 'menampung riwayat nama jabatan pns';
COMMENT ON COLUMN "public"."rw_jabatan"."tmt_pelantikan" IS 'menampung data terhitung mulai tanggal pelantikan pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."no_sk_sertifikasi" IS 'menampung riwayat nomor sertifikasi untuk jabatab';
COMMENT ON COLUMN "public"."rw_jabatan"."tanggal_sk_sertifikasi" IS 'menampung data tanggal sk_sertifikasi pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."tanggal_berlaku" IS 'menampung data tanggal berlaku pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."tanggal_expired" IS 'menampung data tanggal expired pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."path" IS 'menampung file dokumen pendukung untuk riwayat jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."tipe" IS 'menampung riwayat tipe jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."id_riwayat_update" IS 'menampung data id id_riwayat_update yang ada pada tabel rw_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."jabatan_fungsional_nama" IS 'kolom hasil denormalisasi yang menyimpan infromasi jabatan fungsional, merefer ke tabel jabatan_fungsional';
COMMENT ON COLUMN "public"."rw_jabatan"."instansi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai instansi subjek yang bersangkutan, ref dari tabel instansi';
COMMENT ON COLUMN "public"."rw_jabatan"."jenis_jabatan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis jabatan, merefer ke tabel jenis_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan"."jabatan_fungsional_umum_nama" IS 'kolom hasil denormalisasi yang menyimpan infromasi jabatan fungsional umum, merefer ke tabel jabatan_fungsional_umum';
COMMENT ON COLUMN "public"."rw_jabatan"."satuan_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."rw_jabatan"."unor_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi. merefer ke tabel unor';
COMMENT ON COLUMN "public"."rw_jabatan"."eselon_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi eselon pns dari tabel eselon';
COMMENT ON COLUMN "public"."rw_jabatan"."status_pns" IS 'menampung status pns (pns/pppk/tni dan polri/non asn) di tabel riwayat jabatan';

-- ----------------------------
-- Records of rw_jabatan
-- ----------------------------
INSERT INTO "public"."rw_jabatan" VALUES ('A8ACA8DD37E53912E040640A040269BB', 'A5EB03E23F43F6A0E040640A040252AD', NULL, NULL, 'A5EB03E23BFAF6A0E040640A040252AD', 2, NULL, 'A8ACA7BECBF23912E040640A040269BB', '1999-10-01 00:00:00', 'VI-13-03/00144/KEP/X/1999/T', '2000-02-14 00:00:00', 'SDN 63 PAKAN SALASA KOTO BARU KEC.SUNGAI PAGU', 'A5EB03E240E1F6A0E040640A040252AD', NULL, 'MIGRASI', '2011-07-23 07:54:08', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('A8ACA8ED1F603912E040640A040269BB', 'A5EB03E24050F6A0E040640A040252AD', NULL, NULL, 'A5EB03E23AF9F6A0E040640A040252AD', 2, NULL, 'A8ACA748B3063912E040640A040269BB', '2000-04-01 00:00:00', NULL, NULL, NULL, 'A5EB03E240E2F6A0E040640A040252AD', NULL, 'MIGRASI', '2011-07-23 07:56:12', 'LEKTOR MADYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('A8ACA8F697613912E040640A040269BB', 'A5EB03E24053F6A0E040640A040252AD', NULL, NULL, 'A5EB03E23AF9F6A0E040640A040252AD', 2, NULL, 'A8ACA7601BAF3912E040640A040269BB', '2002-02-01 00:00:00', NULL, NULL, NULL, 'A5EB03E240E2F6A0E040640A040252AD', NULL, 'MIGRASI', '2011-07-23 07:57:29', 'ASISTEN AHLI MADYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('A8ACA8F696EE3912E040640A040269BB', NULL, 'A8ACA739B0F93912E040640A040269BB', NULL, 'A5EB03E23AF9F6A0E040640A040252AD', 2, NULL, 'A8ACA7601BAF3912E040640A040269BB', '2008-03-26 00:00:00', '310/MENKES/SK/III/2008', '2008-03-26 00:00:00', 'POLITEKNIK KESEHATAN ( POLTEKKES ) PALU                               ', 'A5EB03E240E2F6A0E040640A040252AD', NULL, 'MIGRASI', '2011-07-23 07:57:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('A8ACA8C882CF3912E040640A040269BB', NULL, NULL, NULL, 'A5EB03E23BFBF6A0E040640A040252AD', NULL, NULL, 'A8ACA7C55B393912E040640A040269BB', '2002-10-10 00:00:00', NULL, NULL, NULL, 'A5EB03E240E3F6A0E040640A040252AD', NULL, 'MIGRASI', '2011-07-23 07:51:28', 'KEPALA KANTOR URUSAN AGAMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('ff808081323d36c40132431072aa6a47', NULL, 'ff80808132398d870132430e5d4526b1', '41', 'A5EB03E23C28F6A0E040640A040252AD', 1, NULL, 'A8ACA7C55B393912E040640A040269BB', '2009-01-28 00:00:00', 'PEG 821.2/11/2009', '2009-01-12 00:00:00', 'SEKSI PERUNDANG UNDANGAN SYARIAT ISLAM', 'A5EB03E2413AF6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2011-09-07 15:34:12', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('ff8080813316bb3c013319cbfcbb26fe', 'A5EB03E23F3FF6A0E040640A040252AD', 'A8ACA73B006C3912E040640A040269BB', NULL, 'A5EB03E23B13F6A0E040640A040252AD', 2, NULL, 'A8ACA7C6B3973912E040640A040269BB', '2011-10-01 00:00:00', NULL, '2011-10-01 00:00:00', 'SLTA UMUM                                                             ', 'A5EB03E24135F6A0E040640A040252AD', 'ff8080813290fadf01329586648c276e', 'PROSEDUR_KP', '2011-10-19 08:29:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('A8ACA8DD37F73912E040640A040269BB', 'A5EB03E23F42F6A0E040640A040252AD', NULL, NULL, 'A5EB03E23B22F6A0E040640A040252AD', 2, NULL, 'A8ACA7BECBF23912E040640A040269BB', '2001-10-01 00:00:00', '823/121/BKD-2002', '2002-05-01 00:00:00', 'SDN 63 PAKAN SALASA KOTO BARU KEC.SUNGAI PAGU', 'A5EB03E24170F6A0E040640A040252AD', NULL, 'MIGRASI', '2011-07-23 07:54:08', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('ff80808135a9de990135ae6b142702d5', 'A5EB03E23F3FF6A0E040640A040252AD', NULL, NULL, 'A5EB03E23D5EF6A0E040640A040252AD', 2, NULL, 'A8ACA7BECBF23912E040640A040269BB', '2009-04-01 00:00:00', '823.3/62/BKD/Bupati-2009', '2009-03-24 00:00:00', 'SDN 15 KAMPAI', 'A5EB03E24170F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2012-02-24 15:12:29', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae48287358087350135865b54273602', 'A5EB03E23F44F6A0E040640A040252AD', 'ff80808134d1ab750134e50082842000', NULL, 'A5EB03E23C3AF6A0E040640A040252AD', 2, NULL, 'A8ACA7D9181B3912E040640A040269BB', '2012-04-01 00:00:00', '823.3/721/LTD-3/03/2012', '2012-03-20 00:00:00', 'SMAN 5 METRO', 'A5EB03E241BCF6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2012-02-16 20:20:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('ff80808136a0d7e90136aa3305ba6b50', 'A5EB03E23F42F6A0E040640A040252AD', '8ae4829b3869990901386ff1d2b05e9a', NULL, 'A5EB03E23B12F6A0E040640A040252AD', 2, NULL, 'A8ACA7C2CE0F3912E040640A040269BB', '2012-04-01 00:00:00', 'BKPP.823.3/01/2012', '2012-04-19 00:00:00', 'SMP NEGERI 1 TAMIANG HULU', 'A5EB03E24133F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2012-04-13 12:35:32', 'GURU SMP NEGERI 1 TAMIANG HULU', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482873676f92501367ba1bf357467', NULL, 'ff80808132398d87013242db0d811b89', '32', 'A5EB03E23C28F6A0E040640A040252AD', 1, NULL, 'A8ACA7C55B393912E040640A040269BB', '2012-01-06 00:00:00', '-PEG.821.2/503/2011', '2012-01-06 00:00:00', 'BIDANG BINA SYARIAT ISLAM', 'A5EB03E2413AF6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2012-04-04 11:34:19', NULL, '2012-01-06 00:00:00', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae4829637ca07e40137d04e939720b2', 'A5EB03E23F42F6A0E040640A040252AD', 'ff8080813533d43a0135370b444e3742', NULL, 'A5EB03E23C41F6A0E040640A040252AD', 2, NULL, 'A8ACA783E8653912E040640A040269BB', '2011-04-01 00:00:00', '832.3/117-BKD/Kep/2011', '2011-03-28 00:00:00', 'SDN SUKA INDAH 03 UPTD PAUD/SD KEC. SUKAKARYA', 'A5EB03E241C9F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2012-06-09 14:45:34', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('ff80808137fd9c4a0137fdfa182c0756', 'A5EB03E23F3EF6A0E040640A040252AD', '8ae4829d45e066a20145f4c4d54c52e6', NULL, 'A5EB03E23D5EF6A0E040640A040252AD', 2, NULL, 'A8ACA7BECBF23912E040640A040269BB', '2012-04-01 00:00:00', '823.4/1976/bkd-2012', '2012-06-21 00:00:00', 'SDN 15 Kampai Kec. KPGD', 'A5EB03E24176F6A0E040640A040252AD', NULL, 'PROSEDUR_KP', '2012-06-18 12:04:13', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae4829b37c4b28f0137d50f0e98152c', 'A5EB03E23F42F6A0E040640A040252AD', 'ff8080813533d43a0135370a5ffc3719', NULL, 'A5EB03E23C41F6A0E040640A040252AD', 2, NULL, 'A8ACA78200513912E040640A040269BB', '2010-10-01 00:00:00', '832.3/989-BKD/Kep/2010', '2010-11-08 00:00:00', 'SDN SUKAMURNI 02 UPTD PAUD/SD KEC. SUKAKARYA', 'A5EB03E241C9F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2012-06-10 13:30:23', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae4828739243961013931308064099a', 'A5EB03E23F43F6A0E040640A040252AD', 'ff80808133869a59013386d025ae04d7', NULL, 'A5EB03E23AF7F6A0E040640A040252AD', 2, NULL, 'A8ACA7B21CA13912E040640A040269BB', '2010-04-01 00:00:00', '823/0610/IV.03/2010', '2010-04-01 00:00:00', 'SDN  SANGGI', 'A5EB03E241B8F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2012-08-17 03:47:06', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae48289397af6e90139944cb35f5c84', 'ff80808132b9d98c0132cd178bc8056e', 'ff80808133869a59013386d025ae04d7', NULL, 'A5EB03E23AF7F6A0E040640A040252AD', 2, NULL, 'A8ACA7B21CA13912E040640A040269BB', '2012-10-01 00:00:00', '823.3/3591/IV.03/2012', '2012-09-20 00:00:00', 'SDN  SANGGI', 'A5EB03E241B8F6A0E040640A040252AD', '8ae4829b3951329301395221e917149d', 'PROSEDUR_KP', '2012-09-05 09:40:16', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae4828739c4b0070139d7379f9d4e54', 'A5EB03E23F41F6A0E040640A040252AD', 'ff8080813533d43a0135370a5ffc3719', NULL, 'A5EB03E23C41F6A0E040640A040252AD', 2, NULL, 'A8ACA78200513912E040640A040269BB', '2012-10-01 00:00:00', '823.3/Kep.365-BKD/2012', '2012-09-24 00:00:00', 'SDN SUKAMURNI 02 UPTD PAUD/SD KEC. SUKAKARYA', 'A5EB03E241C9F6A0E040640A040252AD', '8ae4829b397a7e9b01397c6843b631f5', 'PROSEDUR_KP', '2012-09-18 09:31:50', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('ff8080813dcf6fb4013de7fdef563797', 'A5EB03E2404DF6A0E040640A040252AD', 'A8ACA739B0F93912E040640A040269BB', NULL, 'A5EB03E23AF9F6A0E040640A040252AD', 2, NULL, 'A8ACA7601BAF3912E040640A040269BB', '2010-04-01 00:00:00', 'KP.04.01.2.1.A.0583', '2010-03-15 00:00:00', 'POLITEKNIK KESEHATAN ( POLTEKKES ) PALU                               ', 'A5EB03E244E8F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2013-04-08 11:53:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('ff80808141007d280141396622556237', 'A5EB03E23F41F6A0E040640A040252AD', 'ff8080813533d43a0135370b444e3742', NULL, 'A5EB03E23C41F6A0E040640A040252AD', 2, NULL, 'A8ACA783E8653912E040640A040269BB', '2013-07-01 00:00:00', '823.3/Kep.632-BKD/2013', '2013-11-15 00:00:00', 'SDN SUKA INDAH 03 UPTD PAUD/SD KEC. SUKAKARYA', 'A5EB03E241C9F6A0E040640A040252AD', '8ae4828840c417ed0140e2dd9d526b4d', 'PROSEDUR_KP', '2013-09-20 10:24:56', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae48296441995f401441f3db1cc0617', NULL, 'A8ACA73B140D3912E040640A040269BB', '31', 'A5EB03E23C28F6A0E040640A040252AD', 1, NULL, 'A8ACA7C55B393912E040640A040269BB', '2014-02-06 00:00:00', 'Peg.821.2/15/2014', '2014-02-06 00:00:00', 'SEKRETARIAT', 'A5EB03E2413AF6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2014-02-11 11:39:23', NULL, '2014-02-06 00:00:00', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae4828843bfa9a60143d022308f47dd', 'ff80808132b9d98c0132cd178bc8056e', '8ae4829b3869990901386ff1d2b05e9a', NULL, 'A5EB03E23B12F6A0E040640A040252AD', 2, NULL, 'A8ACA7C2CE0F3912E040640A040269BB', '2012-12-01 00:00:00', 'BKPP.821.29/132/2012', '2012-12-10 00:00:00', 'SMP NEGERI 1 TAMIANG HULU', 'A5EB03E24133F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2014-01-27 02:58:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('ff8080814ebaa098014ee230611f2ac6', 'A5EB03E23F44F6A0E040640A040252AD', 'ff80808134d1ab750134e50082842000', NULL, 'A5EB03E23C3AF6A0E040640A040252AD', 2, NULL, 'A8ACA7D9181B3912E040640A040269BB', '2012-11-01 00:00:00', '800/1094/LTD-3/03/2012', '2012-11-26 00:00:00', 'SMAN 5 METRO', 'A5EB03E241BCF6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2015-07-31 10:38:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('ff80808150141ee80150195d7a5d5c94', 'ff808081333324c50133391997e007ba', 'ff8080813533d43a0135370a5ffc3719', NULL, 'A5EB03E23C41F6A0E040640A040252AD', 2, NULL, 'A8ACA78200513912E040640A040269BB', '2015-10-01 00:00:00', '823/Kep.1428-BKD/2015', '2015-09-30 00:00:00', 'SDN SUKAMURNI 02', 'A5EB03E241C9F6A0E040640A040252AD', 'ff8080814fb893d5014fba745de9617e', 'PROSEDUR_KP', '2015-09-29 20:49:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482874f69a883014f6e3e38d44dc5', 'ff80808133391d07013339270fb50176', 'ff80808134d1ab750134e50082842000', NULL, 'A5EB03E23C3AF6A0E040640A040252AD', 2, NULL, 'A8ACA7D9181B3912E040640A040269BB', '2015-10-01 00:00:00', '823.4/1417/II.10/2015', '2015-11-09 00:00:00', 'SMAN 5 METRO', 'A5EB03E241BCF6A0E040640A040252AD', '8ae482894e0a5df3014e194463893017', 'PROSEDUR_KP', '2015-08-27 15:20:15', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a34fcc3bd2014fcd0e181656ba', 'A5EB03E23F46F6A0E040640A040252AD', 'ff8080813533d43a0135370a5ffc3719', NULL, 'A5EB03E23C41F6A0E040640A040252AD', 2, NULL, 'A8ACA78200513912E040640A040269BB', '2009-04-01 00:00:00', '821.2/288-BKD/Kep/2009', '2009-10-28 00:00:00', 'SDN SUKAMURNI 02 UPTD PAUD/SD KEC. SUKAKARYA', 'A5EB03E241C9F6A0E040640A040252AD', NULL, NULL, '2015-09-15 01:11:36', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a65004964a01500a4002755244', 'A5EB03E23F40F6A0E040640A040252AD', '8ae4829d45e066a20145f4de26f3594b', NULL, 'A5EB03E23D5EF6A0E040640A040252AD', 2, NULL, 'A8ACA7BECBF23912E040640A040269BB', '2006-10-01 00:00:00', '823.3/75/BKD/BUPATI-2006', '2006-09-30 00:00:00', 'SDN 06 Pekan Rabaa Kec. KPGD', 'A5EB03E24176F6A0E040640A040252AD', NULL, NULL, '2015-09-26 15:22:58', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a65004964a01500a4c8b3b5ef0', 'A5EB03E23F45F6A0E040640A040252AD', NULL, NULL, 'A5EB03E23BFAF6A0E040640A040252AD', 2, NULL, 'A8ACA7BECBF23912E040640A040269BB', '1995-10-01 00:00:00', '1303/00023/KEP/X/1995', '1996-01-03 00:00:00', 'SDN 63 PAKAN SALASA KOTO BARU KEC.SUNGAI PAGU', 'A5EB03E240E1F6A0E040640A040252AD', NULL, NULL, '2015-09-26 15:36:39', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a65004964a01500a4a92125cfd', 'ff808081333324c50133391997e007ba', NULL, NULL, 'A5EB03E23BFAF6A0E040640A040252AD', 2, NULL, 'A8ACA7BECBF23912E040640A040269BB', '1997-10-01 00:00:00', '13-03/00018/KEP/X/1997/T', '1997-09-11 00:00:00', 'SDN 63 PAKAN SALASA KOTO BARU KEC.SUNGAI PAGU', 'A5EB03E240E1F6A0E040640A040252AD', NULL, NULL, '2015-09-26 15:34:30', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a65004964a01500a4350f15565', 'ff80808133391d07013339270fb50176', NULL, NULL, 'A5EB03E23B22F6A0E040640A040252AD', 2, NULL, 'A8ACA7BECBF23912E040640A040269BB', '2004-10-01 00:00:00', '823/483/BKD-2004', '2004-09-23 00:00:00', 'SDN 06 Pekan Rabaa Kec. KPGD', 'A5EB03E24170F6A0E040640A040252AD', NULL, NULL, '2015-09-26 15:26:35', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a55081e924015084787c811ee9', 'A5EB03E23F46F6A0E040640A040252AD', 'ff8080813533d43a0135370dd18937a9', NULL, 'A5EB03E23C41F6A0E040640A040252AD', 2, NULL, 'A8ACA783E8653912E040640A040269BB', '2007-01-01 00:00:00', '813/277-BKD/KEP/2007', '2007-11-22 00:00:00', 'SDN SUKAMAKMUR 03 UPTD PAUD/SD KEC. SUKAKARYA', 'A5EB03E241C9F6A0E040640A040252AD', NULL, NULL, '2015-10-20 15:58:20', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a650863432015088da7d4a4c54', 'A5EB03E23F46F6A0E040640A040252AD', NULL, NULL, 'A5EB03E23BFAF6A0E040640A040252AD', 2, NULL, 'A8ACA7BECBF23912E040640A040269BB', '1994-01-01 00:00:00', '7538/IV/Kwpk-1993', '1993-12-30 00:00:00', 'SDN Simancung Kec Sungai Pagu', 'A5EB03E240E1F6A0E040640A040252AD', NULL, NULL, '2015-10-21 12:31:51', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae48206509705bd01509995842f344a', 'A5EB03E23F3FF6A0E040640A040252AD', 'A8ACA73B006C3912E040640A040269BB', NULL, 'A5EB03E23B13F6A0E040640A040252AD', 2, NULL, 'A8ACA7C6B3973912E040640A040269BB', '2011-10-01 00:00:00', NULL, '2011-10-01 00:00:00', 'SLTA UMUM                                                             ', 'A5EB03E24135F6A0E040640A040252AD', 'ff8080813290fadf01329586648c276e', 'PROSEDUR_KP', '2015-10-24 18:30:03', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a650ae43df0150bc746d3f3fd0', 'A5EB03E23F46F6A0E040640A040252AD', 'A8ACA73AFA993912E040640A040269BB', NULL, 'A5EB03E23B12F6A0E040640A040252AD', 2, NULL, 'A8ACA7C2CE0F3912E040640A040269BB', '2005-10-01 00:00:00', 'PEG.823.2/201/2005', '2005-08-12 00:00:00', 'SMP NEGERI 1 TAMIANG HULU', 'A5EB03E24133F6A0E040640A040252AD', NULL, NULL, '2015-10-31 12:52:38', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a650ae43df0150bc6fd8433b3f', 'A5EB03E23F45F6A0E040640A040252AD', '8ae4829b3869990901386af857562224', NULL, 'A5EB03E23B12F6A0E040640A040252AD', 2, NULL, 'A8ACA7C2CE0F3912E040640A040269BB', '2009-10-01 00:00:00', 'BKPP.823.2/07/2009', '2009-10-02 00:00:00', 'SMP NEGERI 1 TAMIANG HULU', 'A5EB03E24133F6A0E040640A040252AD', NULL, NULL, '2015-10-31 12:47:38', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a4516684b801517aa4f7612df1', 'ff80808132b9d98c0132cd178bc8056e', '8ae4829639f5ec840139f74058f75c5f', NULL, 'A5EB03E23C2EF6A0E040640A040252AD', 2, NULL, 'A8ACA7D9181B3912E040640A040269BB', '2006-06-01 00:00:00', '821/KEP/PNS/60/2006', '2006-05-31 00:00:00', 'SMAN 01 SELUPU REJANG', 'A5EB03E241A7F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2015-12-07 11:13:33', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a4516684b801517aa4f7652df2', 'ff80808132b9d98c0132cd178bc8056e', '8ae4829639f5ec840139f74058f75c5f', NULL, 'A5EB03E23C2EF6A0E040640A040252AD', 2, NULL, 'A8ACA7D9181B3912E040640A040269BB', '2007-10-01 00:00:00', '823/132/KEP/10/2007', '2007-09-20 00:00:00', NULL, 'A5EB03E241A7F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2015-12-07 11:13:33', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a4516684b801517ab165fb3428', 'ff808081333324c50133391997e007ba', 'ff80808134d1ab750134e50082842000', NULL, 'A5EB03E23C3AF6A0E040640A040252AD', 2, NULL, 'A8ACA7D9181B3912E040640A040269BB', '2014-01-01 00:00:00', '821.29/1665/LTD-3/03/2013', '2013-12-12 00:00:00', 'SMAN 5 METRO', 'A5EB03E241BCF6A0E040640A040252AD', NULL, NULL, '2015-12-07 11:27:08', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a4516684b801517aaf1457332b', 'ff808081333324c50133391997e007ba', '8ae4829639f5ec840139f74058f75c5f', NULL, 'A5EB03E23C2EF6A0E040640A040252AD', 2, NULL, 'A8ACA7D9181B3912E040640A040269BB', '2009-10-01 00:00:00', '366 TAHUN 2009', '2009-09-30 00:00:00', 'SMAN 01 SELUPU REJANG', 'A5EB03E241A7F6A0E040640A040252AD', NULL, NULL, '2015-12-07 11:24:36', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a45074bcd4015076a107e70132', 'ff80808132b9d98c0132cd178bc8056e', 'A8ACA73AFA993912E040640A040269BB', NULL, 'A5EB03E23B12F6A0E040640A040252AD', 2, NULL, 'A8ACA7C2CE0F3912E040640A040269BB', '2014-04-01 00:00:00', 'BKPP.823.3/215/2014', '2014-04-16 00:00:00', 'SMP NEGERI 3 TENGGULUN', 'A5EB03E24133F6A0E040640A040252AD', NULL, 'MUTASI_JABATAN', '2015-10-16 05:28:01', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a550f466440150f6806ad764d5', NULL, '8ae48289355d949e013575e6ffba78af', NULL, 'A5EB03E23C28F6A0E040640A040252AD', 4, 'A418D76DFEF2B891E040640A04021940', 'A8ACA7C55B393912E040640A040269BB', '2015-02-26 00:00:00', '179/800/2015', '2015-02-26 00:00:00', 'STAF AHLI BIDANG KEMASYARAKATAN DAN SUMBER DAYA MANUSIA', 'A5EB03E2413AF6A0E040640A040252AD', NULL, NULL, '2015-11-11 19:23:42', 'STAF AHLI BIDANG KEMASYARAKATAN DAN SUMBER DAYA MANUSIA', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a6507463c10150747f70632275', NULL, 'ff80808134facef401351398df774c52', NULL, 'A5EB03E23BFBF6A0E040640A040252AD', 1, NULL, 'A8ACA7C55B393912E040640A040269BB', '2006-08-01 00:00:00', 'KW.01.1/2/KP.07.6/1770/2006', '2006-07-24 00:00:00', 'KANTOR URUSAN AGAMA KECAMATAN LANGSA BARAT KOTA LANGSA', 'A5EB03E240E3F6A0E040640A040252AD', NULL, NULL, '2015-10-15 19:32:05', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a55070866e015073f6298c29fc', NULL, '8ae4828749a3d10f0149ac0edb2f0b44', NULL, 'A5EB03E23BFBF6A0E040640A040252AD', 1, NULL, 'A8ACA7C55B393912E040640A040269BB', '2002-10-10 00:00:00', 'WA/I.b/KP.07.6/315/2002', '2002-09-05 00:00:00', 'KUA KECAMATAN MADAT', 'A5EB03E240E3F6A0E040640A040252AD', NULL, 'MIGRASI', '2015-10-17 11:02:03', 'KEPALA KANTOR URUSAN AGAMA', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482a6507463c101507914c6f67df5', NULL, NULL, NULL, 'A5EB03E23BFBF6A0E040640A040252AD', 1, NULL, 'A8ACA7C55B393912E040640A040269BB', '2005-02-18 00:00:00', 'KW.01.2/I/KP.00.2/03/2005', '2005-02-18 00:00:00', NULL, '153DB941F0F64F0CE050640A15023C71', NULL, NULL, '2015-10-16 16:53:41', 'KEPALA KANTOR URUSAN AGAMA', '2005-02-18 00:00:00', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae482875da6eda9015da746d42b41fc', 'ff808081333324c50133391997e007ba', 'ff80808133869a59013386d025ae04d7', NULL, 'A5EB03E23AF7F6A0E040640A040252AD', 2, NULL, 'A8ACA7B21CA13912E040640A040269BB', '2017-10-01 00:00:00', NULL, NULL, 'SDN 14 Padang Cermin', 'A5EB03E241B8F6A0E040640A040252AD', '8ae482865d885908015d8cd70a3a7096', 'PROSEDUR_KP', '2017-08-03 15:47:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae483a8611948f8016126297db208c6', 'A5EB03E23F44F6A0E040640A040252AD', '8ae482a75a4bd60d015a5adfcb246458', NULL, 'A5EB03E23B12F6A0E040640A040252AD', 2, NULL, 'A8ACA7C2CE0F3912E040640A040269BB', '2018-04-01 00:00:00', 'PEG.823.3/02/2018', '2018-02-12 00:00:00', 'SMP NEGERI 3 TENGGULUN', 'A5EB03E24133F6A0E040640A040252AD', '8ae483a760fe1c2e01610293d6f525bb', 'PROSEDUR_KP', '2018-01-24 10:26:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_jabatan" VALUES ('8ae483a562687595016286a524314541', 'ff808081333324c50133391997e007ba', 'ff8080813533d43a0135370b444e3742', NULL, 'A5EB03E23C41F6A0E040640A040252AD', 2, NULL, 'A8ACA783E8653912E040640A040269BB', '2018-03-08 00:00:00', '823/Kep.614-BKPPD/2018', '2018-04-24 00:00:00', 'SDN SUKA INDAH 03', 'A5EB03E241C9F6A0E040640A040252AD', '8ae483a76188d3200161957b26161af8', 'PROSEDUR_KP', '2018-04-02 21:10:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rw_jabatan_del
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_jabatan_del";
CREATE TABLE "public"."rw_jabatan_del" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jabatan_fungsional_id" varchar(32) COLLATE "pg_catalog"."default",
  "unor_id" varchar(32) COLLATE "pg_catalog"."default",
  "eselon_id" varchar(2) COLLATE "pg_catalog"."default",
  "instansi_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jenis_jabatan_id" numeric(1),
  "jabatan_fungsional_umum_id" varchar(32) COLLATE "pg_catalog"."default",
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tmt_jabatan" timestamp(0),
  "nomor_sk" varchar(70) COLLATE "pg_catalog"."default",
  "tanggal_sk" timestamp(0),
  "nama_unor" varchar(250) COLLATE "pg_catalog"."default",
  "satuan_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "nama_jabatan" varchar(250) COLLATE "pg_catalog"."default",
  "tmt_pelantikan" timestamp(0),
  "sinkro_pupns" varchar(1) COLLATE "pg_catalog"."default",
  "no_sk_sertifikasi" varchar(70) COLLATE "pg_catalog"."default",
  "tanggal_sk_sertifikasi" date DEFAULT to_date('0001-01-01 00:00:00'::text, 'YYYY-MM-DD HH24:MI:SS'::text),
  "tanggal_berlaku" date DEFAULT to_date('0001-01-01 00:00:00'::text, 'YYYY-MM-DD HH24:MI:SS'::text),
  "tanggal_expired" date DEFAULT to_date('0001-01-01 00:00:00'::text, 'YYYY-MM-DD HH24:MI:SS'::text),
  "path" text COLLATE "pg_catalog"."default",
  "is_syarat_jabatan" varchar(1) COLLATE "pg_catalog"."default",
  "tipe" varchar(1) COLLATE "pg_catalog"."default",
  "id_riwayat_update" varchar(32) COLLATE "pg_catalog"."default",
  "status_sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "ncsistime_del" date,
  "jabatan_fungsional_nama" jsonb,
  "unor_nama" jsonb,
  "eselon_nama" jsonb,
  "instansi_nama" jsonb,
  "jenis_jabatan_nama" varchar(255) COLLATE "pg_catalog"."default",
  "jabatan_fungsional_umum_nama" jsonb,
  "satuan_kerja_nama" jsonb,
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_jabatan_del"."jabatan_fungsional_nama" IS 'menyimpan informasi dari tabel jabatan_fungsional';
COMMENT ON COLUMN "public"."rw_jabatan_del"."unor_nama" IS 'menyimpan informasi dari tabel unor';
COMMENT ON COLUMN "public"."rw_jabatan_del"."eselon_nama" IS 'menyimpan informasi dari tabel eselon';
COMMENT ON COLUMN "public"."rw_jabatan_del"."instansi_nama" IS 'menyimpan informasi dari tabel instansi';
COMMENT ON COLUMN "public"."rw_jabatan_del"."jenis_jabatan_nama" IS 'menyimpan informasi dari tabel jenis_jabatan';
COMMENT ON COLUMN "public"."rw_jabatan_del"."jabatan_fungsional_umum_nama" IS 'menyimpan informasi dari tabel jabatan_fungsional_umum';
COMMENT ON COLUMN "public"."rw_jabatan_del"."satuan_kerja_nama" IS 'menyimpan informasi dari tabel satuan_kerja';

-- ----------------------------
-- Records of rw_jabatan_del
-- ----------------------------

-- ----------------------------
-- Table structure for rw_kedudukan_hukum
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_kedudukan_hukum";
CREATE TABLE "public"."rw_kedudukan_hukum" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "kedudukan_hukum_id" varchar(2) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "path" text COLLATE "pg_catalog"."default",
  "kedudukan_hukum_nama" jsonb,
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_kedudukan_hukum"."id" IS 'Menampung id pada tabel rw_kedudukan_hukum';
COMMENT ON COLUMN "public"."rw_kedudukan_hukum"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_kedudukan_hukum';
COMMENT ON COLUMN "public"."rw_kedudukan_hukum"."kedudukan_hukum_id" IS 'menampung data id kedudukan_hukum yang ada pada tabel rw_kedudukan_hukum';
COMMENT ON COLUMN "public"."rw_kedudukan_hukum"."asal_nama" IS 'menampung data usul dari riwayat kedudukan hukum';
COMMENT ON COLUMN "public"."rw_kedudukan_hukum"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_kedudukan_hukum';
COMMENT ON COLUMN "public"."rw_kedudukan_hukum"."path" IS 'menampung file dokumen pendukung untuk riwayat kedudukan hukum';
COMMENT ON COLUMN "public"."rw_kedudukan_hukum"."kedudukan_hukum_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi kedudukan hukum dari subjek yang bersangkutan, merefer ke tabel kedudukan_hukum';
COMMENT ON COLUMN "public"."rw_kedudukan_hukum"."status_pns" IS 'menampung riwayat status pns untuk riwayat kedudukan hukum';

-- ----------------------------
-- Records of rw_kedudukan_hukum
-- ----------------------------

-- ----------------------------
-- Table structure for rw_kgb
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_kgb";
CREATE TABLE "public"."rw_kgb" (
  "id" varchar(32) COLLATE "pg_catalog"."default",
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "no_sk" varchar(100) COLLATE "pg_catalog"."default",
  "tgl_sk" timestamp(0),
  "gaji_baru" varchar(100) COLLATE "pg_catalog"."default",
  "tmt_kgb" timestamp(0),
  "ncsis_time" timestamp(0),
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_kgb"."id" IS 'Menampung id pada tabel rw_kgb';
COMMENT ON COLUMN "public"."rw_kgb"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_kgb';
COMMENT ON COLUMN "public"."rw_kgb"."no_sk" IS 'menampung nomor sk kgb';
COMMENT ON COLUMN "public"."rw_kgb"."tgl_sk" IS 'menampung data tanggal sk pada tabel rw_kgb';
COMMENT ON COLUMN "public"."rw_kgb"."gaji_baru" IS 'menampung riwayat gaji baru di kenaikan gaji berkala';
COMMENT ON COLUMN "public"."rw_kgb"."tmt_kgb" IS 'menampung data terhitung mulai tanggal kgb pada tabel rw_kgb';
COMMENT ON COLUMN "public"."rw_kgb"."ncsis_time" IS 'Menampung data tanggal update suatu record dari tabel rw_kgb';
COMMENT ON COLUMN "public"."rw_kgb"."path" IS 'menampung file dokumen pendukung untuk riwayat kenaikan gaji berkala';
COMMENT ON COLUMN "public"."rw_kgb"."status_pns" IS 'menampung riwayat status pns untuk kenaikan gaji berkala';

-- ----------------------------
-- Records of rw_kgb
-- ----------------------------

-- ----------------------------
-- Table structure for rw_kompetensi
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_kompetensi";
CREATE TABLE "public"."rw_kompetensi" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "id_pns" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "integritas" numeric(10,4) NOT NULL,
  "kerjasama" numeric(10,4) NOT NULL,
  "komunikasi" numeric(10,4) NOT NULL,
  "orientasi_pada_hasil" numeric(10,4) NOT NULL,
  "pelayanan_publik" numeric(10,4) NOT NULL,
  "pengembangan_diri_dan_orla" numeric(10,4) NOT NULL,
  "mengelola_perubahan" numeric(10,4) NOT NULL,
  "pengambilan_keputusan" numeric(10,4) NOT NULL,
  "perekat_bangsa" numeric(10,4) NOT NULL,
  "ref_kegiatan_penkom_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "ncsistime" timestamp(0) NOT NULL,
  "jumlah_kuantitatif" numeric(10,4) NOT NULL,
  "jumlah_kualitatif" varchar(150) COLLATE "pg_catalog"."default",
  "ref_kegiatan_penkom_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_kompetensi"."id" IS 'Menampung id pada tabel rw_kompetensi';
COMMENT ON COLUMN "public"."rw_kompetensi"."id_pns" IS 'menampung data id id_pns yang ada pada tabel rw_kompetensi';
COMMENT ON COLUMN "public"."rw_kompetensi"."integritas" IS 'menampung riwayat nilai karakter integritas pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."kerjasama" IS 'menampung riwayat nilai karakter kerja sama pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."komunikasi" IS 'menampung riwayat nilai karakter komunikasi pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."orientasi_pada_hasil" IS 'menampung riwayat nilai karakter orientasi pada hasil pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."pelayanan_publik" IS 'menampung riwayat nilai karakter mampu melakukan pelayan publik pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."pengembangan_diri_dan_orla" IS 'menampung riwayat nilai karakter pengembangan diri dan olahraga pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."mengelola_perubahan" IS 'menampung riwayat nilai karakter mengelola perubahan pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."pengambilan_keputusan" IS 'menampung riwayat nilai karakter dalam pengambilan keputusan pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."perekat_bangsa" IS 'menampung riwayat nilai karakter perekat bangsa pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."ref_kegiatan_penkom_id" IS 'menampung data id ref_kegiatan_penkom yang ada pada tabel rw_kompetensi';
COMMENT ON COLUMN "public"."rw_kompetensi"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_kompetensi';
COMMENT ON COLUMN "public"."rw_kompetensi"."jumlah_kuantitatif" IS 'menampung riwayat nilai kuantitatif dairi tabel kompetensi pns';
COMMENT ON COLUMN "public"."rw_kompetensi"."jumlah_kualitatif" IS 'menampung riwayat nilai kualitatif dari tabel kompetensi pns ';
COMMENT ON COLUMN "public"."rw_kompetensi"."ref_kegiatan_penkom_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai referensi kegiatan penilaian kompetensi, merefer ke tabel ref_kegiatan_penkom';
COMMENT ON COLUMN "public"."rw_kompetensi"."path" IS 'menampung riwayat path file dokumen pendukung mengenai riwayat kompetensi';
COMMENT ON COLUMN "public"."rw_kompetensi"."status_pns" IS 'menampung riwayat status pns di tabel riwayat kompetensi';

-- ----------------------------
-- Records of rw_kompetensi
-- ----------------------------

-- ----------------------------
-- Table structure for rw_kursus
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_kursus";
CREATE TABLE "public"."rw_kursus" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jenis_kursus_id" varchar(32) COLLATE "pg_catalog"."default",
  "instansi_id" varchar(32) COLLATE "pg_catalog"."default",
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nama_kursus" varchar(200) COLLATE "pg_catalog"."default",
  "jumlah_jam" numeric(4),
  "tanggal_kursus" timestamp(0),
  "tahun" numeric(4),
  "institusi_penyelenggara" varchar(100) COLLATE "pg_catalog"."default",
  "jenis_kursus_sertipikat" varchar(1) COLLATE "pg_catalog"."default",
  "nomor_sertipikat" varchar(50) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "sinkro_pupns" varchar(1) COLLATE "pg_catalog"."default",
  "tanggal_selesai_kursus" date,
  "path" text COLLATE "pg_catalog"."default",
  "tipe" varchar(1) COLLATE "pg_catalog"."default",
  "id_riwayat_update" varchar(32) COLLATE "pg_catalog"."default",
  "status_sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "jenis_kursus_nama" jsonb,
  "instansi_nama" jsonb,
  "ncsistime_del" date,
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_kursus"."id" IS 'Menampung id pada tabel rw_kursus';
COMMENT ON COLUMN "public"."rw_kursus"."jenis_kursus_id" IS 'menampung data id jenis_kursus yang ada pada tabel rw_kursus';
COMMENT ON COLUMN "public"."rw_kursus"."instansi_id" IS 'menampung data id instansi yang ada pada tabel rw_kursus';
COMMENT ON COLUMN "public"."rw_kursus"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_kursus';
COMMENT ON COLUMN "public"."rw_kursus"."nama_kursus" IS 'menampung nama kursus';
COMMENT ON COLUMN "public"."rw_kursus"."jumlah_jam" IS 'menampung jumlah jam penyelenggaraan kursus';
COMMENT ON COLUMN "public"."rw_kursus"."tanggal_kursus" IS 'menampung data tanggal kursus pada tabel rw_kursus';
COMMENT ON COLUMN "public"."rw_kursus"."tahun" IS 'menampung tahun kursus';
COMMENT ON COLUMN "public"."rw_kursus"."institusi_penyelenggara" IS 'menampung nama institusi penyelenggara kursus';
COMMENT ON COLUMN "public"."rw_kursus"."jenis_kursus_sertipikat" IS 'menampung jenis sertifikat kursus';
COMMENT ON COLUMN "public"."rw_kursus"."nomor_sertipikat" IS 'menampung nomor sertifikat kursus';
COMMENT ON COLUMN "public"."rw_kursus"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_kursus';
COMMENT ON COLUMN "public"."rw_kursus"."tanggal_selesai_kursus" IS 'menampung data tanggal selesai_kursus pada tabel rw_kursus';
COMMENT ON COLUMN "public"."rw_kursus"."path" IS 'menampung path dokumen pendukung untuk riwayat kursus';
COMMENT ON COLUMN "public"."rw_kursus"."tipe" IS 'menampung tipe kursus';
COMMENT ON COLUMN "public"."rw_kursus"."id_riwayat_update" IS 'menampung data id id_riwayat_update yang ada pada tabel rw_kursus';
COMMENT ON COLUMN "public"."rw_kursus"."asal_id" IS 'menampung data id dari tabel rw_kursus_usul';
COMMENT ON COLUMN "public"."rw_kursus"."asal_nama" IS 'menampung usul nama dari riwayat kursus';
COMMENT ON COLUMN "public"."rw_kursus"."jenis_kursus_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis kursus yang pernah diikuti, merefer ke tabel jenis_kursus';
COMMENT ON COLUMN "public"."rw_kursus"."instansi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai instansi subjek yang bersangkutan, ref dari tabel instansi';
COMMENT ON COLUMN "public"."rw_kursus"."status_pns" IS 'menampung status pns untuk riwayat kursus';

-- ----------------------------
-- Records of rw_kursus
-- ----------------------------

-- ----------------------------
-- Table structure for rw_kursus_nonpns
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_kursus_nonpns";
CREATE TABLE "public"."rw_kursus_nonpns" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jenis_kursus_id" varchar(32) COLLATE "pg_catalog"."default",
  "instansi_id" varchar(32) COLLATE "pg_catalog"."default",
  "nama" varchar(200) COLLATE "pg_catalog"."default",
  "jumlah_jam" numeric(4),
  "tanggal_kursus" timestamp(0),
  "tahun" numeric(4),
  "institusi_penyelenggara" varchar(100) COLLATE "pg_catalog"."default",
  "jenis_kursus_sertifikat" varchar(1) COLLATE "pg_catalog"."default",
  "nomor_sertifikat" varchar(30) COLLATE "pg_catalog"."default",
  "tanggal_selesai_kursus" timestamp(0),
  "non_pns_id" varchar(32) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "instansi_nama" jsonb,
  "jenis_kursus_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."id" IS 'Menampung id pada tabel rw_kursus_nonpns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."jenis_kursus_id" IS 'menampung data id jenis_kursus yang ada pada tabel rw_kursus_nonpns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."instansi_id" IS 'menampung data id instansi yang ada pada tabel rw_kursus_nonpns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."nama" IS 'menamoung nama kursus non pns ';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."jumlah_jam" IS 'menampung data jam untuk kursus non pns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."tanggal_kursus" IS 'menampung data tanggal kursus pada tabel rw_kursus_nonpns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."tahun" IS 'menampung tahun kursus non pns ';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."institusi_penyelenggara" IS 'menampung nama institusi penyelenggara kursus untuk non pns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."jenis_kursus_sertifikat" IS 'menampung jenis sertifikat kursus untuk kursus non pns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."nomor_sertifikat" IS 'menampung nomor sertifikat kursus non pns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."tanggal_selesai_kursus" IS 'menampung data tanggal selesai_kursus pada tabel rw_kursus_nonpns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."non_pns_id" IS 'menampung data id non_pns yang ada pada tabel rw_kursus_nonpns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_kursus_nonpns';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."instansi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai instansi subjek yang bersangkutan, ref dari tabel instansi';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."jenis_kursus_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis kursus yang pernah diikuti, merefer ke tabel jenis_kursus';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."path" IS 'menampung path file dokumen pendukung untuk riwayat kursus non pns ';
COMMENT ON COLUMN "public"."rw_kursus_nonpns"."status_pns" IS 'menampung data status pns untuk kursus non pns ';

-- ----------------------------
-- Records of rw_kursus_nonpns
-- ----------------------------

-- ----------------------------
-- Table structure for rw_latihan_struktural
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_latihan_struktural";
CREATE TABLE "public"."rw_latihan_struktural" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "latihan_struktural_id" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nomor" varchar(50) COLLATE "pg_catalog"."default",
  "tanggal" timestamp(0),
  "tahun" numeric(4),
  "ncsistime" timestamp(0),
  "sinkro_pupns" varchar(1) COLLATE "pg_catalog"."default",
  "bobot_kompetensi" numeric,
  "jenis_kompetensi" varchar(32) COLLATE "pg_catalog"."default",
  "path" text COLLATE "pg_catalog"."default",
  "tipe" varchar(1) COLLATE "pg_catalog"."default",
  "id_riwayat_update" varchar(32) COLLATE "pg_catalog"."default",
  "status_sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "latihan_struktural_nama" jsonb,
  "ncsistime_del" date,
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_latihan_struktural"."id" IS 'Menampung id pada tabel rw_latihan_struktural';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."latihan_struktural_id" IS 'menampung data id latihan_struktural yang ada pada tabel rw_latihan_struktural';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_latihan_struktural';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."tanggal" IS 'menampung data tanggal pada tabel rw_latihan_struktural';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."tahun" IS 'menampung tahun dilaksanakannya diklat';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_latihan_struktural';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."bobot_kompetensi" IS 'menampung nilai bobot kompetensi untuk diklat yg bersangkutan';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat latihan struktural (diklat) pns';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."id_riwayat_update" IS 'menampung data id id_riwayat_update yang ada pada tabel rw_latihan_struktural';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."asal_id" IS 'menampung data id dari tabel rw_latihan_struktural_usul';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."asal_nama" IS 'kolom yang menyimpan informasi dari tabel rw_latihan_struktural_usul';
COMMENT ON COLUMN "public"."rw_latihan_struktural"."latihan_struktural_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai latihan struktural (diklat), merefer ke tabel latihan_struktural';

-- ----------------------------
-- Records of rw_latihan_struktural
-- ----------------------------

-- ----------------------------
-- Table structure for rw_latihan_struktural_nonpns
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_latihan_struktural_nonpns";
CREATE TABLE "public"."rw_latihan_struktural_nonpns" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "latihan_struktural_id" varchar(1) COLLATE "pg_catalog"."default",
  "nomor" varchar(50) COLLATE "pg_catalog"."default",
  "tanggal" timestamp(0),
  "tahun" numeric(4),
  "non_pns_id" varchar(32) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "nama" varchar(200) COLLATE "pg_catalog"."default",
  "latihan_struktural_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_latihan_struktural_nonpns"."id" IS 'Menampung id pada tabel rw_latihan_struktural_nonpns';
COMMENT ON COLUMN "public"."rw_latihan_struktural_nonpns"."latihan_struktural_id" IS 'menampung data id latihan_struktural yang ada pada tabel rw_latihan_struktural_nonpns';
COMMENT ON COLUMN "public"."rw_latihan_struktural_nonpns"."tanggal" IS 'menampung data tanggal pada tabel rw_latihan_struktural_nonpns';
COMMENT ON COLUMN "public"."rw_latihan_struktural_nonpns"."non_pns_id" IS 'menampung data id non_pns yang ada pada tabel rw_latihan_struktural_nonpns';
COMMENT ON COLUMN "public"."rw_latihan_struktural_nonpns"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_latihan_struktural_nonpns';
COMMENT ON COLUMN "public"."rw_latihan_struktural_nonpns"."latihan_struktural_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai latihan struktural (diklat), merefer ke tabel latihan_struktural';
COMMENT ON COLUMN "public"."rw_latihan_struktural_nonpns"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat latihan struktural (diklat) asn non pns';

-- ----------------------------
-- Records of rw_latihan_struktural_nonpns
-- ----------------------------

-- ----------------------------
-- Table structure for rw_lhkpn
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_lhkpn";
CREATE TABLE "public"."rw_lhkpn" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "id_ptn" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nama" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "nip_lama" varchar(9) COLLATE "pg_catalog"."default",
  "nip_baru" varchar(18) COLLATE "pg_catalog"."default" NOT NULL,
  "tgl_pelaporan" date,
  "nama_jabatan" varchar(155) COLLATE "pg_catalog"."default",
  "tmt_jabatan" date,
  "instansi_kerja" varchar(100) COLLATE "pg_catalog"."default",
  "unor" varchar(150) COLLATE "pg_catalog"."default",
  "eselon" varchar(5) COLLATE "pg_catalog"."default",
  "keterangan" varchar(200) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "jenis_form" varchar(32) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_lhkpn"."id" IS 'Menampung id pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."id_ptn" IS 'menampung data id id_ptn yang ada pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."nama" IS 'menampung data riwayat nama pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."nip_lama" IS 'menampung data riwayat nip_lama pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."nip_baru" IS 'menampung data riwayat nip_baru pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."tgl_pelaporan" IS 'menampung data tanggal pelaporan pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."nama_jabatan" IS 'menampung data riwayat nama_jabatan pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."tmt_jabatan" IS 'menampung data terhitung mulai tanggal jabatan pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."instansi_kerja" IS 'menampung data riwayat instansi_kerja pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."eselon" IS 'menampung data riwayat eselon pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."keterangan" IS 'menampung data riwayat keterangan pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."jenis_form" IS 'menampung data riwayat jenis_form pada tabel rw_lhkpn';
COMMENT ON COLUMN "public"."rw_lhkpn"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat Laporan Harta Kekayaan Penyelenggara Negara';

-- ----------------------------
-- Records of rw_lhkpn
-- ----------------------------

-- ----------------------------
-- Table structure for rw_masa_kerja
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_masa_kerja";
CREATE TABLE "public"."rw_masa_kerja" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pengalaman" varchar(254) COLLATE "pg_catalog"."default",
  "tanggal_mulai" timestamp(6),
  "tanggal_selesai" timestamp(6),
  "dinilai" numeric(38),
  "nomor_sk" varchar(50) COLLATE "pg_catalog"."default",
  "tanggal_sk" timestamp(6),
  "nomor_bkn" varchar(30) COLLATE "pg_catalog"."default",
  "tanggal_bkn" timestamp(6),
  "ncsistime" timestamp(6),
  "mk_tahun" numeric(2),
  "mk_bulan" numeric(2),
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_masa_kerja"."id" IS 'Menampung id pada tabel rw_masa_kerja';
COMMENT ON COLUMN "public"."rw_masa_kerja"."orang_id" IS 'menampung data id orang yang ada pada tabel rw_masa_kerja';
COMMENT ON COLUMN "public"."rw_masa_kerja"."tanggal_mulai" IS 'menampung data tanggal mulai pada tabel rw_masa_kerja';
COMMENT ON COLUMN "public"."rw_masa_kerja"."tanggal_selesai" IS 'menampung data tanggal selesai pada tabel rw_masa_kerja';
COMMENT ON COLUMN "public"."rw_masa_kerja"."tanggal_sk" IS 'menampung data tanggal sk pada tabel rw_masa_kerja';
COMMENT ON COLUMN "public"."rw_masa_kerja"."tanggal_bkn" IS 'menampung data tanggal bkn pada tabel rw_masa_kerja';
COMMENT ON COLUMN "public"."rw_masa_kerja"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_masa_kerja';
COMMENT ON COLUMN "public"."rw_masa_kerja"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat masa kerja';

-- ----------------------------
-- Records of rw_masa_kerja
-- ----------------------------
INSERT INTO "public"."rw_masa_kerja" VALUES ('8ae4828936ee777e013711c1540119b7', 'A8ACA78200513912E040640A040269BB', 'PEMKAB BEKASI', '2000-08-01 00:00:00', '2007-01-01 00:00:00', 100, '831/373-BKD/Kep/2010', '2010-09-23 00:00:00', 'DH 23216000102', '2010-07-08 00:00:00', '2012-05-03 15:11:52', 6, 5, NULL);
INSERT INTO "public"."rw_masa_kerja" VALUES ('8ae4828936ee777e013711c48c9619c9', 'A8ACA783E8653912E040640A040269BB', 'PEMKAB BEKASI', '2002-07-01 00:00:00', '2007-01-01 00:00:00', 100, '831/373-BKD/Kep/2010', '2010-09-23 00:00:00', 'DH 23216000105', '2010-07-08 00:00:00', '2012-05-03 15:15:23', 4, 6, NULL);
INSERT INTO "public"."rw_masa_kerja" VALUES ('ff80808137fd9c4a0137fdfecc520768', 'A8ACA7BECBF23912E040640A040269BB', 'SDN 06 Pakan Rabaa', '1985-07-17 00:00:00', '1992-07-15 00:00:00', 100, '831/48/BKD/BUPATI-2010', '2010-06-01 00:00:00', 'MK-21310000001', '2010-05-26 00:00:00', '2012-06-18 12:09:23', 7, 0, NULL);
INSERT INTO "public"."rw_masa_kerja" VALUES ('ff8080813dcf6fb4013de7fb93f53712', 'A8ACA7601BAF3912E040640A040269BB', 'POLITEKNIK KESEHATAN PALU', '2007-10-01 00:00:00', '2010-04-01 00:00:00', 100, '.', '2012-05-11 00:00:00', 'AK-13015000066', '2012-06-14 00:00:00', '2013-04-08 11:50:57', 2, 6, NULL);
INSERT INTO "public"."rw_masa_kerja" VALUES ('8ae482873f51a3df013f5647744f15c5', 'A8ACA7D9181B3912E040640A040269BB', 'SMA NEGERI 5 METRO', '2002-04-01 00:00:00', '2005-02-01 00:00:00', 100, '831/73/B-2/2011', '2011-03-29 00:00:00', 'FH-21872000002', '2011-03-25 00:00:00', '2013-06-18 14:54:49', 2, 10, NULL);
INSERT INTO "public"."rw_masa_kerja" VALUES ('ff80808140151b37014019ebefbb16b5', 'A8ACA7C6B3973912E040640A040269BB', 'Pemerintah Kabupaten Aceh Barat', '1993-07-01 00:00:00', '2002-11-30 00:00:00', 100, '800/520/2002', '2002-12-31 00:00:00', NULL, '2013-07-26 00:00:00', '2013-07-26 14:40:22', 9, 5, NULL);
INSERT INTO "public"."rw_masa_kerja" VALUES ('8ae482893d3a31fe013d439c748d120d', 'A8ACA748B3063912E040640A040269BB', 'KEMENTERIAN KESEHATAN', '2008-10-01 00:00:00', '2011-10-01 00:00:00', 100, '.', '2012-07-25 00:00:00', 'AK 13015000103', '2012-07-25 00:00:00', '2013-03-07 13:49:18', 3, 0, NULL);
INSERT INTO "public"."rw_masa_kerja" VALUES ('8ae482893cb42ef5013cc85c4cd35f00', 'A8ACA7C55B393912E040640A040269BB', 'Dinas Pendidikan', '1994-05-01 00:00:00', '1999-03-31 00:00:00', 100, '070a/BPLS', '1994-04-27 00:00:00', NULL, '2013-02-11 00:00:00', '2013-02-11 15:25:57', 4, 11, NULL);
INSERT INTO "public"."rw_masa_kerja" VALUES ('ff8080814b3558a9014b39b2c017563a', 'A8ACA7C2CE0F3912E040640A040269BB', 'KANWIL DEPAG KAB. ACEH TIMUR', '1993-01-01 00:00:00', '2000-11-01 00:00:00', 100, 'LA/I-B/226/1993', '1993-01-31 00:00:00', NULL, '2015-01-30 00:00:00', '2015-01-30 14:17:05', 7, 10, NULL);
INSERT INTO "public"."rw_masa_kerja" VALUES ('8ae482875da6eda9015da746788e41d8', 'A8ACA7B21CA13912E040640A040269BB', 'SDN SANGGI', '2015-12-01 00:00:00', '2017-12-01 00:00:00', 100, '823.3/958/IV.03/2015', '2015-12-04 00:00:00', 'FH.21809000035', '2015-11-12 00:00:00', '2017-08-03 15:46:40', 4, 6, NULL);

-- ----------------------------
-- Table structure for rw_organisasi
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_organisasi";
CREATE TABLE "public"."rw_organisasi" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nama_organisasi" varchar(100) COLLATE "pg_catalog"."default",
  "jenis_organisasi_id" varchar(2) COLLATE "pg_catalog"."default",
  "kedudukan_organisasi_id" varchar(2) COLLATE "pg_catalog"."default",
  "nama_kedudukan" varchar(100) COLLATE "pg_catalog"."default",
  "tanggal_mulai" timestamp(0),
  "tanggal_akhir" timestamp(0),
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "ncsis_time" timestamp(0),
  "jenis_organisasi_nama" varchar(255) COLLATE "pg_catalog"."default",
  "kedudukan_organisasi_nama" varchar(255) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_organisasi"."id" IS 'Menampung id pada tabel rw_organisasi';
COMMENT ON COLUMN "public"."rw_organisasi"."jenis_organisasi_id" IS 'menampung data id jenis_organisasi yang ada pada tabel rw_organisasi';
COMMENT ON COLUMN "public"."rw_organisasi"."kedudukan_organisasi_id" IS 'menampung data id kedudukan_organisasi yang ada pada tabel rw_organisasi';
COMMENT ON COLUMN "public"."rw_organisasi"."tanggal_mulai" IS 'menampung data tanggal mulai pada tabel rw_organisasi';
COMMENT ON COLUMN "public"."rw_organisasi"."tanggal_akhir" IS 'menampung data tanggal akhir pada tabel rw_organisasi';
COMMENT ON COLUMN "public"."rw_organisasi"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_organisasi';
COMMENT ON COLUMN "public"."rw_organisasi"."ncsis_time" IS 'Menampung data tanggal update suatu record dari tabel rw_organisasi';
COMMENT ON COLUMN "public"."rw_organisasi"."jenis_organisasi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis organisasi, merefer ke tabel jenis_organisasi';
COMMENT ON COLUMN "public"."rw_organisasi"."kedudukan_organisasi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai kedudukan organisasi subjek yang bersangkutan, merefer ke tabel kedudukan_organisasi';
COMMENT ON COLUMN "public"."rw_organisasi"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat organisasi';

-- ----------------------------
-- Records of rw_organisasi
-- ----------------------------

-- ----------------------------
-- Table structure for rw_pembatalan_nip
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_pembatalan_nip";
CREATE TABLE "public"."rw_pembatalan_nip" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "instansi_induk_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tahun_formasi" numeric(5),
  "no_surat" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "lokasi_surat" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "tgl_surat" timestamp(0) NOT NULL,
  "perihal_surat" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "creaby_pns_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "creaby_date" timestamp(0) NOT NULL,
  "updateby_pns_id" varchar(32) COLLATE "pg_catalog"."default",
  "updateby_date" timestamp(0),
  "ncsistime" timestamp(0) NOT NULL,
  "image_001" bytea,
  "image_002" bytea,
  "image_003" bytea,
  "isi_surat" varchar(300) COLLATE "pg_catalog"."default",
  "asal_surat" varchar(200) COLLATE "pg_catalog"."default",
  "image_004" bytea,
  "image_005" bytea,
  "instansi_induk_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."id" IS 'Menampung id pada tabel rw_pembatalan_nip';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_pembatalan_nip';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."instansi_induk_id" IS 'menampung data id instansi_induk yang ada pada tabel rw_pembatalan_nip';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."tgl_surat" IS 'menampung data tanggal surat pada tabel rw_pembatalan_nip';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."creaby_pns_id" IS 'menampung data id pns yang ada pada tabel rw_pembatalan_nip';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."creaby_date" IS 'menampung data tanggal dibuatnya pembatalan pada tabel rw_pembatalan_nip';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."updateby_pns_id" IS 'menampung data id updateby_pns yang ada pada tabel rw_pembatalan_nip';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."updateby_date" IS 'menampung data tanggal updateby_date pada tabel rw_pembatalan_nip';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_pembatalan_nip';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."instansi_induk_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi induk dari tabel instansi';
COMMENT ON COLUMN "public"."rw_pembatalan_nip"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat pembatalan nip';

-- ----------------------------
-- Records of rw_pembatalan_nip
-- ----------------------------

-- ----------------------------
-- Table structure for rw_pemberhentian
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_pemberhentian";
CREATE TABLE "public"."rw_pemberhentian" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jenis_henti_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "sk_nomor" varchar(32) COLLATE "pg_catalog"."default",
  "sk_tanggal" timestamp(0),
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "kedudukan_hukum_pns_id" varchar(2) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "sk_nomor_aktif" varchar(50) COLLATE "pg_catalog"."default",
  "sk_tanggal_aktif" timestamp(0),
  "alasan_aktif" varchar(100) COLLATE "pg_catalog"."default",
  "jenis_henti_nama" varchar(255) COLLATE "pg_catalog"."default",
  "kedudukan_hukum_pns_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_pemberhentian"."id" IS 'Menampung id pada tabel rw_pemberhentian';
COMMENT ON COLUMN "public"."rw_pemberhentian"."jenis_henti_id" IS 'menampung data id jenis_henti yang ada pada tabel rw_pemberhentian';
COMMENT ON COLUMN "public"."rw_pemberhentian"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_pemberhentian';
COMMENT ON COLUMN "public"."rw_pemberhentian"."sk_nomor" IS 'menampung nomor sk pemberhentian';
COMMENT ON COLUMN "public"."rw_pemberhentian"."sk_tanggal" IS 'menampung data tanggal sk pada tabel rw_pemberhentian';
COMMENT ON COLUMN "public"."rw_pemberhentian"."asal_id" IS 'menampung data id dari tabel rw_pemberhentian_usul';
COMMENT ON COLUMN "public"."rw_pemberhentian"."asal_nama" IS 'menyimpan informasi dari tabel ';
COMMENT ON COLUMN "public"."rw_pemberhentian"."kedudukan_hukum_pns_id" IS 'menampung data id kedudukan_hukum_pns yang ada pada tabel rw_pemberhentian';
COMMENT ON COLUMN "public"."rw_pemberhentian"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_pemberhentian';
COMMENT ON COLUMN "public"."rw_pemberhentian"."sk_tanggal_aktif" IS 'menampung data tanggal sk_aktif pada tabel rw_pemberhentian';
COMMENT ON COLUMN "public"."rw_pemberhentian"."alasan_aktif" IS 'menampung data alasan_aktif yang ada pada tabel rw_pemberhentian';
COMMENT ON COLUMN "public"."rw_pemberhentian"."jenis_henti_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis anak, merefer ke tabel jenis_anak';
COMMENT ON COLUMN "public"."rw_pemberhentian"."kedudukan_hukum_pns_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi kedudukan hukum pns yang diberhentikan, merefer ke tabel kedudukan_hukum';
COMMENT ON COLUMN "public"."rw_pemberhentian"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat pemberhentian asn';

-- ----------------------------
-- Records of rw_pemberhentian
-- ----------------------------

-- ----------------------------
-- Table structure for rw_penghargaan
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_penghargaan";
CREATE TABLE "public"."rw_penghargaan" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "harga_id" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tahun" int4,
  "sk_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "sk_date" timestamp(0),
  "ncsistime" timestamp(0),
  "nama" varchar(300) COLLATE "pg_catalog"."default",
  "path" text COLLATE "pg_catalog"."default",
  "tipe" varchar(1) COLLATE "pg_catalog"."default",
  "id_riwayat_update" varchar(32) COLLATE "pg_catalog"."default",
  "status_sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "harga_nama" varchar(255) COLLATE "pg_catalog"."default",
  "ncsistime_del" date,
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_penghargaan"."id" IS 'Menampung id pada tabel rw_penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."harga_id" IS 'menampung data id harga yang ada pada tabel rw_penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."tahun" IS 'menampung tahun didapatnya penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."sk_nomor" IS 'menampung nomor sk pemberian penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."sk_date" IS 'menampung data tanggal sk_date pada tabel rw_penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."nama" IS 'menampung nama penghargaan yang didapat';
COMMENT ON COLUMN "public"."rw_penghargaan"."path" IS 'menampung path file dokumen-dokumen penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."tipe" IS 'menampung tipe penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."id_riwayat_update" IS 'menampung data id id_riwayat_update yang ada pada tabel rw_penghargaan';
COMMENT ON COLUMN "public"."rw_penghargaan"."asal_id" IS 'menampung data id dari tabel rw_penghargaan_usul';
COMMENT ON COLUMN "public"."rw_penghargaan"."asal_nama" IS 'kolom yang menyimpan informasi dari tabel rw_penghargaan_usul';
COMMENT ON COLUMN "public"."rw_penghargaan"."harga_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi jenis penghargaan dari tabel jenis_harga';

-- ----------------------------
-- Records of rw_penghargaan
-- ----------------------------
INSERT INTO "public"."rw_penghargaan" VALUES ('A8ACAA00F2273912E040640A040269BB', '202', 'A8ACA7601BAF3912E040640A040269BB', 1997, NULL, NULL, '2011-07-23 08:38:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_penghargaan" VALUES ('A8ACAA00F2263912E040640A040269BB', '400', 'A8ACA7601BAF3912E040640A040269BB', 1996, NULL, NULL, '2011-07-23 08:38:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rw_penghargaan_nonpns
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_penghargaan_nonpns";
CREATE TABLE "public"."rw_penghargaan_nonpns" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "harga_id" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "non_pns_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tahun" numeric(4),
  "sk_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "sk_date" timestamp(0),
  "ncsistime" timestamp(0),
  "nama" varchar(300) COLLATE "pg_catalog"."default",
  "harga_nama" varchar(255) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_penghargaan_nonpns"."id" IS 'Menampung id pada tabel rw_penghargaan_nonpns';
COMMENT ON COLUMN "public"."rw_penghargaan_nonpns"."harga_id" IS 'menampung data id harga yang ada pada tabel rw_penghargaan_nonpns';
COMMENT ON COLUMN "public"."rw_penghargaan_nonpns"."non_pns_id" IS 'menampung data id non_pns yang ada pada tabel rw_penghargaan_nonpns';
COMMENT ON COLUMN "public"."rw_penghargaan_nonpns"."sk_date" IS 'menampung data tanggal sk_date pada tabel rw_penghargaan_nonpns';
COMMENT ON COLUMN "public"."rw_penghargaan_nonpns"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_penghargaan_nonpns';
COMMENT ON COLUMN "public"."rw_penghargaan_nonpns"."nama" IS 'menampung nama penghargaan yang didapat oleh non pns';
COMMENT ON COLUMN "public"."rw_penghargaan_nonpns"."harga_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi jenis penghargaan dari tabel jenis_harga';
COMMENT ON COLUMN "public"."rw_penghargaan_nonpns"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat penghargaan asn non pns';

-- ----------------------------
-- Records of rw_penghargaan_nonpns
-- ----------------------------

-- ----------------------------
-- Table structure for rw_pindah_instansi
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_pindah_instansi";
CREATE TABLE "public"."rw_pindah_instansi" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "instansi_kerja_lama_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jenis_pegawai_id" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "satuan_kerja_baru_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jenis_jabatan_lama_id" numeric(1) NOT NULL,
  "lokasi_kerja_baru_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "lokasi_kerja_lama_id" varchar(32) COLLATE "pg_catalog"."default",
  "kpkn_baru_id" varchar(32) COLLATE "pg_catalog"."default",
  "jenis_jabatan_baru_id" numeric(1) NOT NULL,
  "eselon_id" varchar(2) COLLATE "pg_catalog"."default",
  "jabatan_fungsional_lama_id" varchar(32) COLLATE "pg_catalog"."default",
  "instansi_kerja_baru_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "unor_lama_id" varchar(32) COLLATE "pg_catalog"."default",
  "instansi_induk_baru_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "unor_baru_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "instansi_induk_lama_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "jabatan_fungsional_baru_id" varchar(32) COLLATE "pg_catalog"."default",
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "sk_usul_nomor" varchar(40) COLLATE "pg_catalog"."default",
  "sk_usul_tanggal" timestamp(0),
  "sk_bkn_nomor" varchar(40) COLLATE "pg_catalog"."default",
  "sk_bkn_tanggal" timestamp(0),
  "tmt_pi" timestamp(0),
  "sk_asal_nomor" varchar(40) COLLATE "pg_catalog"."default",
  "sk_asal_tanggal" timestamp(0),
  "sk_tujuan_nomor" varchar(40) COLLATE "pg_catalog"."default",
  "sk_tujuan_tanggal" timestamp(0),
  "satuan_kerja_lama_id" varchar(32) COLLATE "pg_catalog"."default",
  "jenis_pi" varchar(15) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "satuan_kerja_induk_lama_id" varchar(32) COLLATE "pg_catalog"."default",
  "satuan_kerja_induk_baru_id" varchar(32) COLLATE "pg_catalog"."default",
  "jfu_baru_id" varchar(32) COLLATE "pg_catalog"."default",
  "orang_usul_peremajaan_id" varchar(32) COLLATE "pg_catalog"."default",
  "sk_asal_prov_nomor" varchar(40) COLLATE "pg_catalog"."default",
  "sk_asal_prov_tanggal" timestamp(0),
  "instansi_kerja_lama_nama" jsonb,
  "jenis_pegawai_nama" varchar(255) COLLATE "pg_catalog"."default",
  "satuan_kerja_baru_nama" jsonb,
  "jenis_jabatan_lama_nama" varchar(255) COLLATE "pg_catalog"."default",
  "lokasi_kerja_baru_nama" jsonb,
  "lokasi_kerja_lama_nama" jsonb,
  "kpkn_baru_nama" jsonb,
  "jenis_jabatan_baru_nama" varchar(255) COLLATE "pg_catalog"."default",
  "eselon_nama" jsonb,
  "jabatan_fungsional_lama_nama" jsonb,
  "instansi_kerja_baru_nama" jsonb,
  "unor_lama_nama" jsonb,
  "instansi_induk_baru_nama" jsonb,
  "unor_baru_nama" jsonb,
  "instansi_induk_lama_nama" jsonb,
  "jabatan_fungsional_baru_nama" jsonb,
  "satuan_kerja_lama_nama" jsonb,
  "satuan_kerja_induk_lama_nama" jsonb,
  "satuan_kerja_induk_baru_nama" jsonb,
  "jfu_baru_nama" jsonb,
  "orang_usul_peremajaan_nama" jsonb,
  "jabatan_fungsional_umum_baru_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_pindah_instansi"."id" IS 'Menampung id pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."instansi_kerja_lama_id" IS 'menampung data id instansi_kerja_lama yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jenis_pegawai_id" IS 'menampung data id jenis_pegawai yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."satuan_kerja_baru_id" IS 'menampung data id satuan_kerja_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jenis_jabatan_lama_id" IS 'menampung data id jenis_jabatan_lama yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."lokasi_kerja_baru_id" IS 'menampung data id lokasi_kerja_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."lokasi_kerja_lama_id" IS 'menampung data id lokasi_kerja_lama yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."kpkn_baru_id" IS 'menampung data id kpkn_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jenis_jabatan_baru_id" IS 'menampung data id jenis_jabatan_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."eselon_id" IS 'menampung data id eselon yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jabatan_fungsional_lama_id" IS 'menampung data id jabatan_fungsional_lama yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."instansi_kerja_baru_id" IS 'menampung data id instansi_kerja_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."unor_lama_id" IS 'menampung data id unor_lama yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."instansi_induk_baru_id" IS 'menampung data id instansi_induk_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."unor_baru_id" IS 'menampung data id unor_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."instansi_induk_lama_id" IS 'menampung data id instansi_induk_lama yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jabatan_fungsional_baru_id" IS 'menampung data id jabatan_fungsional_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."sk_usul_nomor" IS 'menampung data riwayat nomor surat keputusan usul pindah instansi yang akan pindah instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."sk_usul_tanggal" IS 'menampung data tanggal sk_usul pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."sk_bkn_nomor" IS 'menampung data riwayat nomor surat keputusan bkn yang akan pindah instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."sk_bkn_tanggal" IS 'menampung data tanggal sk_bkn pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."tmt_pi" IS 'menampung data terhitung mulai tanggal pi pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."sk_asal_tanggal" IS 'menampung data tanggal sk_asal pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."sk_tujuan_nomor" IS 'menampung data riwayat nomor surat keputusan tujuan instansi yang akan pindah instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."sk_tujuan_tanggal" IS 'menampung data tanggal sk_tujuan pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."satuan_kerja_lama_id" IS 'menampung data id satuan_kerja_lama yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."satuan_kerja_induk_lama_id" IS 'menampung data id satuan_kerja_induk_lama yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."satuan_kerja_induk_baru_id" IS 'menampung data id satuan_kerja_induk_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jfu_baru_id" IS 'menampung data id jfu_baru yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."orang_usul_peremajaan_id" IS 'menampung data id orang_usul_peremajaan yang ada pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."sk_asal_prov_nomor" IS 'menampung data riwayat nomor surat keputusan asal instansi yang akan pindah instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."sk_asal_prov_tanggal" IS 'menampung data tanggal sk_asal_prov pada tabel rw_pindah_instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."instansi_kerja_lama_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi kerja lama dari tabel instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jenis_pegawai_nama" IS 'kolom hasil denormalisasi yang meyimpan informasi mengenai jenis pegawai subjek yang bersangkutan, merefer ke tabel jenis_pegawai';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."satuan_kerja_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja baru, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jenis_jabatan_lama_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis jabatan yang lama, merefer ke tabel jenis_jabatan';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."lokasi_kerja_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai lokasi kerja baru, merefer ke tabel lokasi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."lokasi_kerja_lama_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai lokasi kerja lama, merefer ke tabel lokasi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."kpkn_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai Kantor Perbendaharaan dan Kas Negara baru (sekarang Kantor Pelayanan Perbendaharaan Negara - KPPN), merefer ke tabel kpkn';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jenis_jabatan_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis jabatan yang baru, merefer ke tabel jenis_jabatan';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."eselon_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi eselon pns dari tabel eselon';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jabatan_fungsional_lama_nama" IS 'kolom hasil denormalisasi yang menyimpan infromasi jabatan fungsional lama, merefer ke tabel jabatan_fungsional';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."instansi_kerja_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi kerja baru dari tabel instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."unor_lama_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi lama. merefer ke tabel unor';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."instansi_induk_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi induk baru dari tabel instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."unor_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi baru. merefer ke tabel unor';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."instansi_induk_lama_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi induk baru dari tabel instansi';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jabatan_fungsional_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan infromasi jabatan fungsional baru, merefer ke tabel jabatan_fungsional';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."satuan_kerja_lama_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja lama, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."satuan_kerja_induk_lama_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja induk lama, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."satuan_kerja_induk_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja induk baru, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jfu_baru_nama" IS 'menyimpan informasi dari tabel jabatan_fungsional_umum';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."orang_usul_peremajaan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pengusulan peremajaan orang, merefer ke tabel orang_usul_peremajaan';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."jabatan_fungsional_umum_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jabatan fungsional umum baru, merefer ke tabel jabatan_fungsional_umum';
COMMENT ON COLUMN "public"."rw_pindah_instansi"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat pindah instansi';

-- ----------------------------
-- Records of rw_pindah_instansi
-- ----------------------------
INSERT INTO "public"."rw_pindah_instansi" VALUES ('8ae483a763ace4350163af34f41205f8', 'A5EB03E23B13F6A0E040640A040252AD', '01', 'A5EB03E240E3F6A0E040640A040252AD', 2, 'A5EB03E21F05F6A0E040640A040252AD', 'A5EB03E21F3DF6A0E040640A040252AD', 'A5EB03E21CB1F6A0E040640A040252AD', 4, NULL, 'A5EB03E23F3FF6A0E040640A040252AD', 'A5EB03E23BFBF6A0E040640A040252AD', 'A8ACA73B006C3912E040640A040269BB', 'A5EB03E23BFBF6A0E040640A040252AD', '39384221EA896702E050640A29027F86', 'A5EB03E23B13F6A0E040640A040252AD', NULL, 'A8ACA7C6B3973912E040640A040269BB', NULL, NULL, '00144/KEP/AU/12018/2018', '2018-06-28 00:00:00', '2018-07-01 00:00:00', 'Peg.828/23.a/2018', '2018-01-12 00:00:00', 'B-18050/B.II/3/Kp.00.3/5/2018', '2018-05-30 00:00:00', 'A5EB03E24135F6A0E040640A040252AD', 'Pindah Instansi', '2018-05-30 11:23:06', 'A5EB03E24135F6A0E040640A040252AD', 'A5EB03E240E3F6A0E040640A040252AD', '8ae482884fb46f43014fb5351b365d17', '8ae483a763ace4350163af2aaa1c7ebc', 'BKA.824.5/19/2018', '2018-02-15 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_pindah_instansi" VALUES ('A8ACA9FD1B5B3912E040640A040269BB', 'A5EB03E23C41F6A0E040640A040252AD', '15', 'A5EB03E241C9F6A0E040640A040252AD', 4, 'A5EB03E223DDF6A0E040640A040252AD', 'A5EB03E21F56F6A0E040640A040252AD', NULL, 2, NULL, NULL, 'A5EB03E23C41F6A0E040640A040252AD', 'A8ACA73D6C843912E040640A040269BB', 'A5EB03E23C41F6A0E040640A040252AD', 'A8ACA73D6C8E3912E040640A040269BB', 'A5EB03E23C41F6A0E040640A040252AD', 'A5EB03E23F46F6A0E040640A040252AD', 'A8ACA783E8653912E040640A040269BB', '800/170-BKD', '2010-07-29 00:00:00', NULL, NULL, '2010-07-29 00:00:00', '800/170-BKD', '2010-07-29 00:00:00', NULL, NULL, 'A5EB03E241C9F6A0E040640A040252AD', 'Pindah Instansi', '2011-07-23 08:32:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_pindah_instansi" VALUES ('A8ACA9FE65FD3912E040640A040269BB', 'A5EB03E23C34F6A0E040640A040252AD', '15', 'A5EB03E241B8F6A0E040640A040252AD', 4, 'A5EB03E22075F6A0E040640A040252AD', 'A5EB03E21F92F6A0E040640A040252AD', NULL, 2, NULL, NULL, 'A5EB03E23AF7F6A0E040640A040252AD', 'A8ACA73D09D93912E040640A040269BB', 'A5EB03E23AF7F6A0E040640A040252AD', 'A8ACA73D24F43912E040640A040269BB', 'A5EB03E23C34F6A0E040640A040252AD', 'A5EB03E23F45F6A0E040640A040252AD', 'A8ACA7B21CA13912E040640A040269BB', '99', '2008-07-01 00:00:00', NULL, NULL, '2008-01-01 00:00:00', '99', '2008-07-01 00:00:00', NULL, NULL, 'A5EB03E241B0F6A0E040640A040252AD', 'Pindah Instansi', '2011-07-23 08:34:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_pindah_instansi" VALUES ('A8ACA9FEDD733912E040640A040269BB', 'A5EB03E23B22F6A0E040640A040252AD', '15', 'A5EB03E24176F6A0E040640A040252AD', 2, 'A5EB03E22085F6A0E040640A040252AD', 'A5EB03E22A9CF6A0E040640A040252AD', NULL, 2, NULL, 'A5EB03E23F41F6A0E040640A040252AD', 'A5EB03E23D5EF6A0E040640A040252AD', NULL, 'A5EB03E23D5EF6A0E040640A040252AD', 'A8ACA73BF98E3912E040640A040269BB', 'A5EB03E23B22F6A0E040640A040252AD', 'A5EB03E23F41F6A0E040640A040252AD', 'A8ACA7BECBF23912E040640A040269BB', '99', '2006-02-24 00:00:00', NULL, NULL, '2006-02-24 00:00:00', '99', '2006-02-24 00:00:00', NULL, NULL, 'A5EB03E24170F6A0E040640A040252AD', 'Pindah Instansi', '2011-07-23 08:35:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_pindah_instansi" VALUES ('A8ACA9FF1D673912E040640A040269BB', 'A5EB03E23C14F6A0E040640A040252AD', '15', 'A5EB03E2413AF6A0E040640A040252AD', 4, 'A5EB03E2227FF6A0E040640A040252AD', 'A5EB03E231BEF6A0E040640A040252AD', NULL, 4, NULL, NULL, 'A5EB03E23C28F6A0E040640A040252AD', 'A8ACA73AD07E3912E040640A040269BB', 'A5EB03E23C28F6A0E040640A040252AD', 'A8ACA73B11DF3912E040640A040269BB', 'A5EB03E23C14F6A0E040640A040252AD', NULL, 'A8ACA7C2CE0F3912E040640A040269BB', '99', '2008-01-01 00:00:00', NULL, NULL, '2008-01-01 00:00:00', '99', '2008-01-01 00:00:00', NULL, NULL, 'A5EB03E24129F6A0E040640A040252AD', 'Pindah Instansi', '2011-07-23 08:35:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_pindah_instansi" VALUES ('A8ACA9FD0D573912E040640A040269BB', 'A5EB03E23C41F6A0E040640A040252AD', '15', 'A5EB03E241C9F6A0E040640A040252AD', 4, 'A5EB03E223DDF6A0E040640A040252AD', 'A5EB03E21F56F6A0E040640A040252AD', NULL, 2, NULL, NULL, 'A5EB03E23C41F6A0E040640A040252AD', 'A8ACA73D6C843912E040640A040269BB', 'A5EB03E23C41F6A0E040640A040252AD', 'A8ACA73D6C8E3912E040640A040269BB', 'A5EB03E23C41F6A0E040640A040252AD', 'A5EB03E23F46F6A0E040640A040252AD', 'A8ACA78200513912E040640A040269BB', '800/170-BKD', '2010-07-29 00:00:00', NULL, NULL, '2010-07-29 00:00:00', '800/170-BKD', '2010-07-29 00:00:00', NULL, NULL, 'A5EB03E241C9F6A0E040640A040252AD', 'Pindah Instansi', '2011-07-23 08:32:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_pindah_instansi" VALUES ('A8ACA9FC0FC73912E040640A040269BB', 'A5EB03E23AF9F6A0E040640A040252AD', '01', 'A5EB03E240E2F6A0E040640A040252AD', 2, 'A5EB03E225D3F6A0E040640A040252AD', 'A5EB03E225D3F6A0E040640A040252AD', NULL, 2, NULL, 'A5EB03E24050F6A0E040640A040252AD', 'A5EB03E23AF9F6A0E040640A040252AD', 'A8ACA739B1173912E040640A040269BB', 'A5EB03E23AF9F6A0E040640A040252AD', 'A8ACA739B1173912E040640A040269BB', 'A5EB03E23AF9F6A0E040640A040252AD', 'A5EB03E2404DF6A0E040640A040252AD', 'A8ACA748B3063912E040640A040269BB', '99', '2008-08-01 00:00:00', NULL, NULL, '2008-08-01 00:00:00', '99', '2008-08-01 00:00:00', NULL, NULL, 'A5EB03E240E2F6A0E040640A040252AD', 'Pindah Instansi', '2011-07-23 08:30:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_pindah_instansi" VALUES ('A8ACA9FC76203912E040640A040269BB', 'A5EB03E23AF9F6A0E040640A040252AD', '01', 'A5EB03E240E2F6A0E040640A040252AD', 2, 'A5EB03E230CFF6A0E040640A040252AD', 'A5EB03E230CFF6A0E040640A040252AD', NULL, 2, NULL, 'A5EB03E24053F6A0E040640A040252AD', 'A5EB03E23AF9F6A0E040640A040252AD', 'A8ACA739B0F93912E040640A040269BB', 'A5EB03E23AF9F6A0E040640A040252AD', 'A8ACA739B0F93912E040640A040269BB', 'A5EB03E23AF9F6A0E040640A040252AD', 'A5EB03E24052F6A0E040640A040252AD', 'A8ACA7601BAF3912E040640A040269BB', '99', '2008-08-14 00:00:00', NULL, NULL, '2008-08-14 00:00:00', '99', '2008-08-14 00:00:00', NULL, NULL, 'A5EB03E240E2F6A0E040640A040252AD', 'Pindah Instansi', '2011-07-23 08:31:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_pindah_instansi" VALUES ('A8ACA9FF25223912E040640A040269BB', 'A5EB03E23C28F6A0E040640A040252AD', '15', 'A5EB03E2413AF6A0E040640A040252AD', 4, 'A5EB03E2227FF6A0E040640A040252AD', 'A5EB03E2227FF6A0E040640A040252AD', NULL, 4, NULL, NULL, 'A5EB03E23C28F6A0E040640A040252AD', 'A8ACA73B11DF3912E040640A040269BB', 'A5EB03E23C28F6A0E040640A040252AD', 'A8ACA73B14093912E040640A040269BB', 'A5EB03E23C28F6A0E040640A040252AD', NULL, 'A8ACA7C55B393912E040640A040269BB', '30-10-2009', '2009-10-30 00:00:00', NULL, NULL, '2009-10-30 00:00:00', '30-10-2009', '2009-10-30 00:00:00', NULL, NULL, 'A5EB03E2413AF6A0E040640A040252AD', 'Pindah Instansi', '2011-07-23 08:35:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."rw_pindah_instansi" VALUES ('ff80808135806b3501358465c5cd52f9', 'A5EB03E23C2EF6A0E040640A040252AD', '15', 'A5EB03E241BCF6A0E040640A040252AD', 2, 'A5EB03E22045F6A0E040640A040252AD', 'A5EB03E21F8EF6A0E040640A040252AD', 'A5EB03E21EC0F6A0E040640A040252AD', 2, NULL, 'A5EB03E23F40F6A0E040640A040252AD', 'A5EB03E23C3AF6A0E040640A040252AD', 'A8ACA73CECED3912E040640A040269BB', 'A5EB03E23C3AF6A0E040640A040252AD', 'A8ACA73D2DA03912E040640A040269BB', 'A5EB03E23C2EF6A0E040640A040252AD', 'A5EB03E23F40F6A0E040640A040252AD', 'A8ACA7D9181B3912E040640A040269BB', '824/811/II.12/2009', '2009-03-31 00:00:00', '00027/KEP/FU/21872/09', '2009-04-06 00:00:00', '2009-05-01 00:00:00', '800/39/Bag.9', '2008-08-09 00:00:00', '824.3/87/B-2/2009', '2009-02-12 00:00:00', 'A5EB03E241A7F6A0E040640A040252AD', 'Pindah Instansi', '2012-02-16 11:22:38', 'A5EB03E241A7F6A0E040640A040252AD', 'A5EB03E241BCF6A0E040640A040252AD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rw_pns_pasangan
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_pns_pasangan";
CREATE TABLE "public"."rw_pns_pasangan" (
  "id" varchar(32) COLLATE "pg_catalog"."default",
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "pasangan_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "nama" varchar(55) COLLATE "pg_catalog"."default",
  "tgl_lhr" date,
  "tempat_lhr" varchar(50) COLLATE "pg_catalog"."default",
  "akta_meninggal" varchar(50) COLLATE "pg_catalog"."default",
  "tgl_meninggal" date,
  "tgl_menikah" date,
  "akta_menikah" varchar(50) COLLATE "pg_catalog"."default",
  "tgl_cerai" date,
  "akta_cerai" varchar COLLATE "pg_catalog"."default",
  "posisi" int4,
  "status" varchar(1) COLLATE "pg_catalog"."default",
  "is_pns" varchar(1) COLLATE "pg_catalog"."default",
  "no_sk_pensiun" varchar(50) COLLATE "pg_catalog"."default",
  "status_nikah" varchar(12) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of rw_pns_pasangan
-- ----------------------------

-- ----------------------------
-- Table structure for rw_pns_unor
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_pns_unor";
CREATE TABLE "public"."rw_pns_unor" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "sk_nomor" varchar(70) COLLATE "pg_catalog"."default",
  "sk_tanggal" date,
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "unor_baru_id" varchar(32) COLLATE "pg_catalog"."default",
  "unor_baru_nama" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "instansi_id" varchar(32) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "instansi_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_pns_unor"."id" IS 'Menampung id pada tabel rw_pns_unor';
COMMENT ON COLUMN "public"."rw_pns_unor"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_pns_unor';
COMMENT ON COLUMN "public"."rw_pns_unor"."sk_nomor" IS 'menampung riwayat nomor surat keputusan unit organisasi';
COMMENT ON COLUMN "public"."rw_pns_unor"."sk_tanggal" IS 'menampung data tanggal sk pada tabel rw_pns_unor';
COMMENT ON COLUMN "public"."rw_pns_unor"."asal_id" IS 'menampung data id dari tabel rw_pns_unor_usul';
COMMENT ON COLUMN "public"."rw_pns_unor"."asal_nama" IS 'kolom yang menyimpan informasi dari tabel rw_pns_unor_usul';
COMMENT ON COLUMN "public"."rw_pns_unor"."unor_baru_id" IS 'menampung data id unor_baru yang ada pada tabel rw_pns_unor';
COMMENT ON COLUMN "public"."rw_pns_unor"."unor_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi baru. merefer ke tabel unor';
COMMENT ON COLUMN "public"."rw_pns_unor"."instansi_id" IS 'menampung data id instansi yang ada pada tabel rw_pns_unor';
COMMENT ON COLUMN "public"."rw_pns_unor"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_pns_unor';
COMMENT ON COLUMN "public"."rw_pns_unor"."instansi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai instansi subjek yang bersangkutan, ref dari tabel instansi';
COMMENT ON COLUMN "public"."rw_pns_unor"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat unit organisasi pns';
COMMENT ON COLUMN "public"."rw_pns_unor"."status_pns" IS 'menampung data riwayat status pns pada tabel rw_pns_unor';

-- ----------------------------
-- Records of rw_pns_unor
-- ----------------------------

-- ----------------------------
-- Table structure for rw_pppk
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_pppk";
CREATE TABLE "public"."rw_pppk" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "jabatan_nama" varchar(150) COLLATE "pg_catalog"."default",
  "tmt_eselon" timestamp(0),
  "unit_kerja_nama" varchar(150) COLLATE "pg_catalog"."default",
  "pendidikan_id" varchar(32) COLLATE "pg_catalog"."default",
  "orang_usul_peng_id" varchar(32) COLLATE "pg_catalog"."default",
  "status_aktif" varchar(1) COLLATE "pg_catalog"."default",
  "nik" varchar(30) COLLATE "pg_catalog"."default",
  "passport" varchar(30) COLLATE "pg_catalog"."default",
  "value_kontrak" varchar(2) COLLATE "pg_catalog"."default",
  "no_kontrak" varchar(30) COLLATE "pg_catalog"."default",
  "tgl_awal_kontrak" timestamp(0),
  "tgl_akhir_kontrak" timestamp(0),
  "tgl_pemberhentian" timestamp(0),
  "kpkn_id" varchar(32) COLLATE "pg_catalog"."default",
  "instansi_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "instansi_induk_id" varchar(32) COLLATE "pg_catalog"."default",
  "jenis_pegawai_id" varchar(32) COLLATE "pg_catalog"."default",
  "kedudukan_hukum_id" varchar(2) COLLATE "pg_catalog"."default",
  "jenis_jabatan_id" numeric(1),
  "jabatan_fungsional_umum_id" varchar(32) COLLATE "pg_catalog"."default",
  "golongan_id" varchar(2) COLLATE "pg_catalog"."default",
  "eselon_id" varchar(2) COLLATE "pg_catalog"."default",
  "lokasi_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "nip_baru" varchar(18) COLLATE "pg_catalog"."default",
  "status_cpns_pns" varchar(1) COLLATE "pg_catalog"."default",
  "tmt_golongan" timestamp(0),
  "satuan_kerja_induk_id" varchar(32) COLLATE "pg_catalog"."default",
  "satuan_kerja_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "unor_id" varchar(32) COLLATE "pg_catalog"."default",
  "tmt_cpns" timestamp(0),
  "golongan_awal_id" varchar(32) COLLATE "pg_catalog"."default",
  "tmt_jabatan" timestamp(0),
  "tanggal_ditetapkan_nip" timestamp(0),
  "np_cpns_nomor" varchar(30) COLLATE "pg_catalog"."default",
  "np_cpns_tanggal" timestamp(0),
  "mk_tahun" numeric(2),
  "mk_bulan" numeric(2),
  "ncsistime" timestamp(0),
  "pendidikan_nama" jsonb,
  "orang_usul_peng_nama" jsonb,
  "kpkn_nama" jsonb,
  "instansi_kerja_nama" jsonb,
  "instansi_induk_nama" jsonb,
  "jenis_pegawai_nama" varchar(255) COLLATE "pg_catalog"."default",
  "kedudukan_hukum_nama" jsonb,
  "jenis_jabatan_nama" varchar(255) COLLATE "pg_catalog"."default",
  "jabatan_fungsional_umum_nama" jsonb,
  "golongan_nama" jsonb,
  "eselon_nama" jsonb,
  "lokasi_kerja_nama" jsonb,
  "satuan_kerja_induk_nama" jsonb,
  "satuan_kerja_kerja_nama" jsonb,
  "unor_nama" jsonb,
  "golongan_awal_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."rw_pppk"."id" IS 'Menampung id pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."tmt_eselon" IS 'menampung data terhitung mulai tanggal eselon pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."pendidikan_id" IS 'menampung data id pendidikan yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."orang_usul_peng_id" IS 'menampung data id orang_usul_peng yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."nik" IS 'menampung data riwayat nik pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."passport" IS 'menampung data riwayat passport pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."no_kontrak" IS 'menampung data riwayat no_kontrak pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."tgl_awal_kontrak" IS 'menampung data tanggal awal_kontrak pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."tgl_akhir_kontrak" IS 'menampung data tanggal akhir_kontrak pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."tgl_pemberhentian" IS 'menampung data tanggal pemberhentian pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."kpkn_id" IS 'menampung data id kpkn yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."instansi_kerja_id" IS 'menampung data id instansi_kerja yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."instansi_induk_id" IS 'menampung data id instansi_induk yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."jenis_pegawai_id" IS 'menampung data id jenis_pegawai yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."kedudukan_hukum_id" IS 'menampung data id kedudukan_hukum yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."jenis_jabatan_id" IS 'menampung data id jenis_jabatan yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."jabatan_fungsional_umum_id" IS 'menampung data id jabatan_fungsional_umum yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."golongan_id" IS 'menampung data id golongan yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."eselon_id" IS 'menampung data id eselon yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."lokasi_kerja_id" IS 'menampung data id lokasi_kerja yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."nip_baru" IS 'menampung data riwayat nip_baru pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."tmt_golongan" IS 'menampung data terhitung mulai tanggal golongan pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."satuan_kerja_induk_id" IS 'menampung data id satuan_kerja_induk yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."satuan_kerja_kerja_id" IS 'menampung data id satuan_kerja_kerja yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."unor_id" IS 'menampung data id unor yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."tmt_cpns" IS 'menampung data terhitung mulai tanggal cpns pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."golongan_awal_id" IS 'menampung data id golongan_awal yang ada pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."tmt_jabatan" IS 'menampung data terhitung mulai tanggal jabatan pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."tanggal_ditetapkan_nip" IS 'menampung data tanggal ditetapkan_nip pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."np_cpns_tanggal" IS 'menampung data tanggal np_cpns pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."mk_tahun" IS 'menampung data riwayat masa kerja_tahun pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."mk_bulan" IS 'menampung data riwayat masa kerja_bulan pada tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_pppk';
COMMENT ON COLUMN "public"."rw_pppk"."pendidikan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pendidikan, merefer ke tabel pendidikan';
COMMENT ON COLUMN "public"."rw_pppk"."orang_usul_peng_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai pengusulan pengadaan orang, merefer ke tabel orang_usul_peng';
COMMENT ON COLUMN "public"."rw_pppk"."kpkn_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai Kantor Perbendaharaan dan Kas Negara (sekarang Kantor Pelayanan Perbendaharaan Negara - KPPN), merefer ke tabel kpkn';
COMMENT ON COLUMN "public"."rw_pppk"."instansi_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi kerja dari tabel instansi';
COMMENT ON COLUMN "public"."rw_pppk"."instansi_induk_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi instansi induk dari tabel instansi';
COMMENT ON COLUMN "public"."rw_pppk"."jenis_pegawai_nama" IS 'kolom hasil denormalisasi yang meyimpan informasi mengenai jenis pegawai subjek yang bersangkutan, merefer ke tabel jenis_pegawai';
COMMENT ON COLUMN "public"."rw_pppk"."kedudukan_hukum_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi kedudukan hukum dari subjek yang bersangkutan, merefer ke tabel kedudukan_hukum';
COMMENT ON COLUMN "public"."rw_pppk"."jenis_jabatan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai jenis jabatan, merefer ke tabel jenis_jabatan';
COMMENT ON COLUMN "public"."rw_pppk"."jabatan_fungsional_umum_nama" IS 'kolom hasil denormalisasi yang menyimpan infromasi jabatan fungsional umum, merefer ke tabel jabatan_fungsional_umum';
COMMENT ON COLUMN "public"."rw_pppk"."golongan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi golongan dari tabel golongan';
COMMENT ON COLUMN "public"."rw_pppk"."eselon_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi eselon pns dari tabel eselon';
COMMENT ON COLUMN "public"."rw_pppk"."lokasi_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai lokasi kerja, merefer ke tabel lokasi';
COMMENT ON COLUMN "public"."rw_pppk"."satuan_kerja_induk_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja induk, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."rw_pppk"."satuan_kerja_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."rw_pppk"."unor_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi. merefer ke tabel unor';
COMMENT ON COLUMN "public"."rw_pppk"."golongan_awal_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi golongan awal dari tabel golongan';
COMMENT ON COLUMN "public"."rw_pppk"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat Pegawai Pemerintah dengan Perjanjian Kerja';

-- ----------------------------
-- Records of rw_pppk
-- ----------------------------

-- ----------------------------
-- Table structure for rw_prestasi
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_prestasi";
CREATE TABLE "public"."rw_prestasi" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nama" varchar(200) COLLATE "pg_catalog"."default",
  "tingkat" varchar(2) COLLATE "pg_catalog"."default",
  "tahun" numeric(1000,53),
  "ncsistime" timestamp(0),
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "tipe" varchar(1) COLLATE "pg_catalog"."default",
  "id_riwayat_update" varchar(32) COLLATE "pg_catalog"."default",
  "path" text COLLATE "pg_catalog"."default",
  "status_sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "tingkat_nama" varchar(50) COLLATE "pg_catalog"."default",
  "ncsistime_del" date,
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_prestasi"."id" IS 'Menampung id pada tabel rw_prestasi';
COMMENT ON COLUMN "public"."rw_prestasi"."nama" IS 'menampung nama prestasi';
COMMENT ON COLUMN "public"."rw_prestasi"."tingkat" IS 'menampung tingkat prestasi';
COMMENT ON COLUMN "public"."rw_prestasi"."tahun" IS 'menampung tahun dicapainya prestasi';
COMMENT ON COLUMN "public"."rw_prestasi"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_prestasi';
COMMENT ON COLUMN "public"."rw_prestasi"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_prestasi';
COMMENT ON COLUMN "public"."rw_prestasi"."id_riwayat_update" IS 'menampung data id id_riwayat_update yang ada pada tabel rw_prestasi';
COMMENT ON COLUMN "public"."rw_prestasi"."path" IS 'menampung path file-file dokumen bukti prestasi';
COMMENT ON COLUMN "public"."rw_prestasi"."asal_id" IS 'menampung data id dari tabel rw_prestasi_usul';
COMMENT ON COLUMN "public"."rw_prestasi"."asal_nama" IS 'kolom yang menyimpan informasi dari tabel rw_prestasi_usul';
COMMENT ON COLUMN "public"."rw_prestasi"."tingkat_nama" IS 'menampung nama tingkat prestasi';

-- ----------------------------
-- Records of rw_prestasi
-- ----------------------------

-- ----------------------------
-- Table structure for rw_prestasi_nonpns
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_prestasi_nonpns";
CREATE TABLE "public"."rw_prestasi_nonpns" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nama" varchar(1000) COLLATE "pg_catalog"."default",
  "tingkat" varchar(2) COLLATE "pg_catalog"."default",
  "tahun" numeric(1000,53),
  "ncsistime" timestamp(0),
  "non_pns_id" varchar(32) COLLATE "pg_catalog"."default",
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_prestasi_nonpns"."id" IS 'Menampung id pada tabel rw_prestasi_nonpns';
COMMENT ON COLUMN "public"."rw_prestasi_nonpns"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_prestasi_nonpns';
COMMENT ON COLUMN "public"."rw_prestasi_nonpns"."non_pns_id" IS 'menampung data id non_pns yang ada pada tabel rw_prestasi_nonpns';
COMMENT ON COLUMN "public"."rw_prestasi_nonpns"."path" IS 'menampung path file-file dokumen bukti prestasi';

-- ----------------------------
-- Records of rw_prestasi_nonpns
-- ----------------------------

-- ----------------------------
-- Table structure for rw_profesi
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_profesi";
CREATE TABLE "public"."rw_profesi" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "profesi_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "nama_ins_penyelenggara" varchar(50) COLLATE "pg_catalog"."default",
  "tahun_lulus" numeric(4),
  "ncsistime" timestamp(0),
  "profesi_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_profesi"."id" IS 'Menampung id pada tabel rw_profesi';
COMMENT ON COLUMN "public"."rw_profesi"."profesi_id" IS 'menampung data id profesi yang ada pada tabel rw_profesi';
COMMENT ON COLUMN "public"."rw_profesi"."pns_id" IS 'menampung data id pns yang ada pada tabel rw_profesi';
COMMENT ON COLUMN "public"."rw_profesi"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_profesi';
COMMENT ON COLUMN "public"."rw_profesi"."profesi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai profesi, merefer ke tabel profesi';
COMMENT ON COLUMN "public"."rw_profesi"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat profesi asn';

-- ----------------------------
-- Records of rw_profesi
-- ----------------------------
INSERT INTO "public"."rw_profesi" VALUES ('A8ACA9F915EF3912E040640A040269BB', 'A5EB03E207E9F6A0E040640A040252AD', 'A8ACA7B21CA13912E040640A040269BB', 'UNILA', 2003, '2011-07-23 08:30:19', NULL, NULL, NULL);
INSERT INTO "public"."rw_profesi" VALUES ('A8ACA9F9DB013912E040640A040269BB', 'A5EB03E207E9F6A0E040640A040252AD', 'A8ACA7BECBF23912E040640A040269BB', NULL, 2001, '2011-07-23 08:30:22', NULL, NULL, NULL);
INSERT INTO "public"."rw_profesi" VALUES ('A8ACA9FAC0AB3912E040640A040269BB', 'A5EB03E20527F6A0E040640A040252AD', 'A8ACA7C2CE0F3912E040640A040269BB', NULL, 1993, '2011-07-23 08:30:24', NULL, NULL, NULL);
INSERT INTO "public"."rw_profesi" VALUES ('A8ACA9FACCA83912E040640A040269BB', 'A5EB03E205F8F6A0E040640A040252AD', 'A8ACA7C6B3973912E040640A040269BB', NULL, 1987, '2011-07-23 08:30:24', NULL, NULL, NULL);
INSERT INTO "public"."rw_profesi" VALUES ('A8ACA9FB53D23912E040640A040269BB', 'A5EB03E20662F6A0E040640A040252AD', 'A8ACA7D9181B3912E040640A040269BB', 'UNIV MUHAMMADIYAH METRO', 1998, '2011-07-23 08:30:27', NULL, NULL, NULL);
INSERT INTO "public"."rw_profesi" VALUES ('A8ACA9F1CE853912E040640A040269BB', 'A5EB03E20658F6A0E040640A040252AD', 'A8ACA748B3063912E040640A040269BB', NULL, 1990, '2011-07-23 08:29:51', NULL, NULL, NULL);
INSERT INTO "public"."rw_profesi" VALUES ('A8ACA9F4432F3912E040640A040269BB', 'A5EB03E20658F6A0E040640A040252AD', 'A8ACA7601BAF3912E040640A040269BB', NULL, 2003, '2011-07-23 08:30:00', NULL, NULL, NULL);
INSERT INTO "public"."rw_profesi" VALUES ('A8ACA9FAC7FC3912E040640A040269BB', 'A5EB03E20658F6A0E040640A040252AD', 'A8ACA7C55B393912E040640A040269BB', NULL, 1999, '2011-07-23 08:30:24', NULL, NULL, NULL);
INSERT INTO "public"."rw_profesi" VALUES ('8ae4829b37c4b28f0137d516e1b11547', 'A5EB03E20658F6A0E040640A040252AD', 'A8ACA78200513912E040640A040269BB', 'IAI AL-AQIDAH JAKARTA', 2008, '2012-06-10 13:38:53', NULL, NULL, NULL);
INSERT INTO "public"."rw_profesi" VALUES ('8ae4829637ca07e40137d0597f1a20d0', 'A5EB03E20658F6A0E040640A040252AD', 'A8ACA783E8653912E040640A040269BB', 'STAI SHALAHUDDIN AL-AYYUBI JAKARTA', 2005, '2012-06-09 14:57:29', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rw_pwk
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_pwk";
CREATE TABLE "public"."rw_pwk" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "instansi_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "kpkn_baru_id" varchar(32) COLLATE "pg_catalog"."default",
  "satuan_kerja_id" varchar(32) COLLATE "pg_catalog"."default",
  "lokasi_kerja_baru_id" varchar(32) COLLATE "pg_catalog"."default",
  "unor_baru_id" varchar(32) COLLATE "pg_catalog"."default",
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "sk_nomor" varchar(40) COLLATE "pg_catalog"."default",
  "sk_tanggal" timestamp(0),
  "tmt_pwk" timestamp(0),
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "instansi_nama" jsonb,
  "kpkn_baru_nama" jsonb,
  "satuan_kerja_nama" jsonb,
  "lokasi_kerja_baru_nama" jsonb,
  "unor_baru_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_pwk"."id" IS 'Menampung id pada tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."instansi_id" IS 'menampung data id instansi yang ada pada tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."kpkn_baru_id" IS 'menampung data id kpkn_baru yang ada pada tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."satuan_kerja_id" IS 'menampung data id satuan_kerja yang ada pada tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."lokasi_kerja_baru_id" IS 'menampung data id lokasi_kerja_baru yang ada pada tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."unor_baru_id" IS 'menampung data id unor_baru yang ada pada tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."sk_nomor" IS 'menampung nomor sk (surat keterangan)';
COMMENT ON COLUMN "public"."rw_pwk"."sk_tanggal" IS 'menampung data tanggal sk pada tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."tmt_pwk" IS 'menampung data terhitung mulai tanggal pwk pada tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."asal_id" IS 'menampung data id dari tabel rw_pwk_usul';
COMMENT ON COLUMN "public"."rw_pwk"."asal_nama" IS 'kolom yang menyimpan informasi dari tabel rw_pwk_usul';
COMMENT ON COLUMN "public"."rw_pwk"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_pwk';
COMMENT ON COLUMN "public"."rw_pwk"."instansi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai instansi subjek yang bersangkutan, ref dari tabel instansi';
COMMENT ON COLUMN "public"."rw_pwk"."kpkn_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai Kantor Perbendaharaan dan Kas Negara baru (sekarang Kantor Pelayanan Perbendaharaan Negara - KPPN), merefer ke tabel kpkn';
COMMENT ON COLUMN "public"."rw_pwk"."satuan_kerja_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai satuan kerja, merefer ke tabel satuan kerja';
COMMENT ON COLUMN "public"."rw_pwk"."lokasi_kerja_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai lokasi kerja baru, merefer ke tabel lokasi';
COMMENT ON COLUMN "public"."rw_pwk"."unor_baru_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai unit organisasi baru. merefer ke tabel unor';
COMMENT ON COLUMN "public"."rw_pwk"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat pindah wilayah kerja asn';

-- ----------------------------
-- Records of rw_pwk
-- ----------------------------

-- ----------------------------
-- Table structure for rw_riwayat_kepanitiaan
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_riwayat_kepanitiaan";
CREATE TABLE "public"."rw_riwayat_kepanitiaan" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "pns_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "kedudukan_organisasi_id" varchar(2) COLLATE "pg_catalog"."default",
  "nama" varchar(100) COLLATE "pg_catalog"."default",
  "tahun" varchar(4) COLLATE "pg_catalog"."default",
  "no_sk_tim" varchar(50) COLLATE "pg_catalog"."default",
  "tgl_sk_tim" timestamp(0),
  "jenis_kepanitiaan_id" varchar(2) COLLATE "pg_catalog"."default",
  "bobot_kompetensi" varchar(10) COLLATE "pg_catalog"."default",
  "ncsis_time" bytea,
  "kedudukan_organisasi_nama" varchar(255) COLLATE "pg_catalog"."default",
  "jenis_kepanitian_nama" jsonb,
  "jenis_kepanitiaan_nama" jsonb,
  "path" varchar(255) COLLATE "pg_catalog"."default",
  "status_pns" int4
)
;
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."id" IS 'Menampung id pada tabel rw_riwayat_kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."pns_orang_id" IS 'menampung data id pns_orang yang ada pada tabel rw_riwayat_kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."kedudukan_organisasi_id" IS 'menampung data id kedudukan_organisasi yang ada pada tabel rw_riwayat_kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."nama" IS 'menampung nama kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."tahun" IS 'menampung tahun dibentuknya dan dilaksanakannya kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."no_sk_tim" IS 'menampung nomor sk tim kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."tgl_sk_tim" IS 'menampung data tanggal sk_tim pada tabel rw_riwayat_kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."jenis_kepanitiaan_id" IS 'menampung data id jenis_kepanitiaan yang ada pada tabel rw_riwayat_kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."bobot_kompetensi" IS 'menampung bobot nilai kompetensi';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."ncsis_time" IS 'Menampung data tanggal update suatu record dari tabel rw_riwayat_kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."kedudukan_organisasi_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi mengenai kedudukan organisasi subjek yang bersangkutan, merefer ke tabel kedudukan_organisasi';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."jenis_kepanitian_nama" IS 'menampung data riwayat dari tabel jenis_kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."jenis_kepanitiaan_nama" IS 'kolom hasil denormalisasi yang menyimpan informasi jenis kepanitiaan, merefer ke tabel jenis_kepanitiaan';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."path" IS 'menampung path file-file dokumen pendukung';
COMMENT ON COLUMN "public"."rw_riwayat_kepanitiaan"."status_pns" IS 'menampung status pns';

-- ----------------------------
-- Records of rw_riwayat_kepanitiaan
-- ----------------------------

-- ----------------------------
-- Table structure for rw_skp
-- ----------------------------
DROP TABLE IF EXISTS "public"."rw_skp";
CREATE TABLE "public"."rw_skp" (
  "id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "atasanpejabatpenilai_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "pejabatpenilai_orang_id" varchar(32) COLLATE "pg_catalog"."default",
  "pnsdinilai_orang_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "tahun" int4,
  "nilai_skp" numeric(5,2),
  "orientasi_pelayanan" numeric(5,2),
  "integritas" numeric(5,2),
  "komitmen" numeric(5,2),
  "disiplin" numeric(5,2),
  "kerjasama" numeric(5,2),
  "kepemimpinan" numeric(5,2),
  "jumlah" numeric(5,2),
  "nilairatarata" numeric(5,2),
  "nilai_perilaku_kerja" numeric(5,2),
  "nilai_prestasi_kerja" numeric(5,2),
  "atasan_non_pns_id" varchar(32) COLLATE "pg_catalog"."default",
  "penilai_non_pns_id" varchar(32) COLLATE "pg_catalog"."default",
  "atasan_penilai_jabatan" varchar(250) COLLATE "pg_catalog"."default",
  "penilai_jabatan" varchar(250) COLLATE "pg_catalog"."default",
  "penilai_golongan" varchar(30) COLLATE "pg_catalog"."default",
  "atasan_penilai_golongan" varchar(30) COLLATE "pg_catalog"."default",
  "penilai_tmt_golongan" timestamp(0),
  "atasan_penilai_tmt_golongan" timestamp(0),
  "penilai_unor_nama" varchar(250) COLLATE "pg_catalog"."default",
  "atasan_penilai_unor_nama" varchar(250) COLLATE "pg_catalog"."default",
  "penilai_nama" varchar(100) COLLATE "pg_catalog"."default",
  "atasan_penilai_nama" varchar(100) COLLATE "pg_catalog"."default",
  "penilai_nip_nrp" varchar(30) COLLATE "pg_catalog"."default",
  "atasan_penilai_nip_nrp" varchar(30) COLLATE "pg_catalog"."default",
  "status_penilai" varchar(9) COLLATE "pg_catalog"."default",
  "status_atasan_penilai" varchar(9) COLLATE "pg_catalog"."default",
  "ncsistime" timestamp(0),
  "jenis_jabatan_id" int4,
  "dokumen_skp" bytea,
  "lampirkan" varchar(1) COLLATE "pg_catalog"."default",
  "format" varchar(4) COLLATE "pg_catalog"."default",
  "path" text COLLATE "pg_catalog"."default",
  "tipe" varchar(1) COLLATE "pg_catalog"."default",
  "id_riwayat_update" varchar(32) COLLATE "pg_catalog"."default",
  "status_sinkro" varchar(1) COLLATE "pg_catalog"."default",
  "asal_id" varchar(32) COLLATE "pg_catalog"."default",
  "asal_nama" varchar(20) COLLATE "pg_catalog"."default",
  "ncsistime_del" date,
  "status_pns" int4,
  "jenis_jabatan" int4
)
;
COMMENT ON COLUMN "public"."rw_skp"."id" IS 'Menampung id pada tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."atasanpejabatpenilai_orang_id" IS 'menampung data id atasanpejabatpenilai_orang yang ada pada tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."pejabatpenilai_orang_id" IS 'menampung data id pejabatpenilai_orang yang ada pada tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."pnsdinilai_orang_id" IS 'menampung data id pnsdinilai_orang yang ada pada tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."tahun" IS 'tahun penilaian skp';
COMMENT ON COLUMN "public"."rw_skp"."nilai_skp" IS 'menampung nilai skp';
COMMENT ON COLUMN "public"."rw_skp"."orientasi_pelayanan" IS 'menampung hasil penilaian dalam kategori orientasi pelayanan';
COMMENT ON COLUMN "public"."rw_skp"."integritas" IS 'menampung hasil penilaian dalam kategori integritas';
COMMENT ON COLUMN "public"."rw_skp"."komitmen" IS 'menampung hasil penilaian dalam kategori komitmen';
COMMENT ON COLUMN "public"."rw_skp"."disiplin" IS 'menampung hasil penilaian dalam kategori kedisiplinan';
COMMENT ON COLUMN "public"."rw_skp"."kerjasama" IS 'menampung hasil penilaian dalam kategori kerjasama';
COMMENT ON COLUMN "public"."rw_skp"."kepemimpinan" IS 'menampung hasil penilaian dalam kategori kepemimpinan';
COMMENT ON COLUMN "public"."rw_skp"."jumlah" IS 'menampung total jumlah nilai';
COMMENT ON COLUMN "public"."rw_skp"."nilairatarata" IS 'menampung nilai rata-rata';
COMMENT ON COLUMN "public"."rw_skp"."nilai_perilaku_kerja" IS 'menampung hasil penilaian dalam kategori perilaku kerja';
COMMENT ON COLUMN "public"."rw_skp"."nilai_prestasi_kerja" IS 'menampung hasil penilaian dalam kategori prestasi kerja';
COMMENT ON COLUMN "public"."rw_skp"."atasan_non_pns_id" IS 'menampung data id atasan_non_pns yang ada pada tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."penilai_non_pns_id" IS 'menampung data id penilai_non_pns yang ada pada tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."atasan_penilai_jabatan" IS 'menampung jabatan atasan langsung penilai';
COMMENT ON COLUMN "public"."rw_skp"."penilai_jabatan" IS 'menampung jabatan penilai';
COMMENT ON COLUMN "public"."rw_skp"."penilai_golongan" IS 'menampung golongan penilai';
COMMENT ON COLUMN "public"."rw_skp"."atasan_penilai_golongan" IS 'menampung golongan atasan langsung penilai';
COMMENT ON COLUMN "public"."rw_skp"."penilai_tmt_golongan" IS 'menampung data terhitung mulai tanggal penilai_golongan pada tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."atasan_penilai_tmt_golongan" IS 'menampung data terhitung mulai tanggal atasan_penilai_golongan pada tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."penilai_nip_nrp" IS 'menampung nomor nip/nrp penilai';
COMMENT ON COLUMN "public"."rw_skp"."atasan_penilai_nip_nrp" IS 'menampung nip/nrp atasan langsung penilai';
COMMENT ON COLUMN "public"."rw_skp"."status_penilai" IS 'menampung status (PNS/BUKAN PNS) penilai';
COMMENT ON COLUMN "public"."rw_skp"."status_atasan_penilai" IS 'menampung status (PNS/BUKAN PNS) atasan langsung penilai';
COMMENT ON COLUMN "public"."rw_skp"."ncsistime" IS 'Menampung data tanggal update suatu record dari tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."dokumen_skp" IS 'menampung dokumen skp dalam blob';
COMMENT ON COLUMN "public"."rw_skp"."format" IS 'menampung format file dokumen skp';
COMMENT ON COLUMN "public"."rw_skp"."path" IS 'menyimpan path file-file dokumen yang berkaitan dengan riwayat sasaran kinerja pegawai';
COMMENT ON COLUMN "public"."rw_skp"."id_riwayat_update" IS 'menampung data id id_riwayat_update yang ada pada tabel rw_skp';
COMMENT ON COLUMN "public"."rw_skp"."asal_id" IS 'menampung data id dari tabel rw_skp_usul';
COMMENT ON COLUMN "public"."rw_skp"."asal_nama" IS 'kolom yang menyimpan informasi dari tabel rw_skp_usul';
COMMENT ON COLUMN "public"."rw_skp"."status_pns" IS 'menampung status yang dinilai (pns/pppk/tni atau polri/non asn)';

-- ----------------------------
-- Records of rw_skp
-- ----------------------------
INSERT INTO "public"."rw_skp" VALUES ('8ae4829d4b358ad3014b498088796ce0', NULL, NULL, 'A8ACA7C55B393912E040640A040269BB', 2014, 88.67, 91.00, 80.00, 76.00, 76.00, 76.00, 76.00, 475.00, 79.17, 31.67, 84.87, NULL, NULL, NULL, NULL, 'IV/b', NULL, '2012-04-01 00:00:00', NULL, 'DINAS SYARI''AT ISLAM KOTA LANGSA', NULL, 'IBRAHIM L', NULL, '196304141988031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "public"."rw_skp" VALUES ('8ae482894e0a5df3014e1946f88836b5', NULL, NULL, 'A8ACA7D9181B3912E040640A040269BB', 2014, 86.04, 82.00, 83.00, 83.00, 82.00, 82.00, 0.00, 412.00, 82.40, 32.96, 84.58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO "public"."rw_skp" VALUES ('8ae483a760fe1c2e016102816dfc197b', NULL, NULL, 'A8ACA7C2CE0F3912E040640A040269BB', 2017, 89.50, 82.00, 80.00, 84.00, 80.00, 79.00, 0.00, 405.00, 81.00, 32.40, 86.10, NULL, NULL, 'SEKRETARIS', 'Guru Muda', 'III/d', 'IV/b', '2013-04-01 00:00:00', '2014-10-01 00:00:00', 'SMP NEGERI 2 TAMIANG HULU', 'SEKRETARIAT', 'EDI  WAHYUDI', 'MUHAMMAD NUR', '197704042005041001', '196412311985101013', 'PNS', 'PNS', '2018-01-17 12:15:21', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO "public"."rw_skp" VALUES ('8ae483a760fe1c2e01610283cb331ac0', NULL, NULL, 'A8ACA7C2CE0F3912E040640A040269BB', 2016, 86.08, 90.00, 85.00, 83.00, 85.00, 83.00, 0.00, 426.00, 85.20, 34.08, 85.73, NULL, NULL, 'SEKRETARIS', 'Guru Madya', 'IV/b', 'IV/b', '2016-10-01 00:00:00', '2014-10-01 00:00:00', 'SMP NEGERI 3 TENGGULUN', 'SEKRETARIAT', 'RUSDI AHADI', 'MUHAMMAD NUR', '196904232000071001', '196412311985101013', 'PNS', 'PNS', '2018-01-17 12:17:56', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO "public"."rw_skp" VALUES ('8ae483c66ec95138016ed3defac72057', NULL, NULL, 'A8ACA7BECBF23912E040640A040269BB', 2018, 89.22, 84.00, 91.00, 86.00, 86.00, 84.00, 0.00, 431.00, 86.20, 34.48, 88.01, NULL, NULL, 'Keapal Dinas', 'Sekretaris', 'IV/b', 'IV/b', '2018-04-01 00:00:00', '2018-04-01 00:00:00', 'Sekretariat', 'Sekretariat', 'NOVRIZON', 'NOVRIZON', '196711091992031006', '196711091992031006', 'PNS', 'PNS', '2019-12-05 09:23:56', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO "public"."rw_skp" VALUES ('8ae483c572a6a8070172c754e53f6d46', NULL, 'A8ACA7B0D1D43912E040640A040269BB', 'A8ACA7D9181B3912E040640A040269BB', 2019, 89.87, 84.00, 85.00, 84.00, 84.00, 84.00, 0.00, 421.00, 84.20, 33.68, 87.60, NULL, NULL, 'KEPALA CABANG DINAS PENDIDIKAN WILAYAH V PADA DINAS PENDIDIKAN DAN KEBUDAYAAN PROVINSI LAMPUNG', 'KEPALA SEKOLAH PADA SMA NEGERI 5 METRO', 'IV/b', 'IV/a', '2014-10-01 00:00:00', '2020-04-01 00:00:00', 'SMA NEGERI 5 METRO', 'DINAS PENDIDIKAN DAN KEBUDAYAAN', 'SUPARNI', 'INDARTI', '196406081989031014', '196812061989012001', 'PNS', 'PNS', '2020-06-18 19:08:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO "public"."rw_skp" VALUES ('8ae483c572cb5a2a0172e17a9b7e4cd0', NULL, 'A8ACA7CCA3EF3912E040640A040269BB', 'A8ACA7BECBF23912E040640A040269BB', 2019, 84.83, 88.00, 87.00, 86.00, 85.00, 85.00, 0.00, 431.00, 86.20, 34.48, 85.38, NULL, NULL, '-', '-', '-', '-', NULL, NULL, '-', '-', 'YULI IRAWATI', 'ASNIATI', '198407102009012004', '196412011984102002', 'PNS', 'PNS', '2020-06-23 21:00:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO "public"."rw_skp" VALUES ('8ae483c67355ec1e017379c598776605', NULL, NULL, 'A8ACA7C6B3973912E040640A040269BB', 2019, 88.00, 88.00, 92.00, 86.00, 86.00, 86.00, 0.00, 438.00, 87.60, 35.04, 87.84, NULL, NULL, 'Kepala Kantor Kementerian Agama Kabupaten Aceh Jaya', 'Kepala Kantor Kementerian Agama Kabupaten Aceh Jaya', 'IV/a', 'IV/b', '2018-04-01 00:00:00', '2016-04-01 00:00:00', 'Kantor Kementerian Agama Kabupaten Aceh Jaya', 'Kanwil Kementerian Agama Provinsi Aceh', 'SAMSUL BAHRI', 'M DAUD PAKEH', '196804111993031005', '196012311990011001', 'PNS', 'PNS', '2020-07-23 10:44:19', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO "public"."rw_skp" VALUES ('8ae483c67355ec1e017379c2b4b16534', NULL, NULL, 'A8ACA7C6B3973912E040640A040269BB', 2018, 87.50, 87.00, 92.00, 86.00, 86.00, 85.00, 0.00, 436.00, 87.20, 34.88, 87.38, NULL, NULL, 'Kepala Kantor Kementerian Agama Kabupaten Aceh Jaya', 'Kepala Kantor Kementerian Agama Kabupaten Aceh Jaya', 'IV/a', 'IV/b', '2018-04-01 00:00:00', '2016-04-01 00:00:00', 'Kantor Kementerian Agama Kabupaten Aceh Jaya', 'Kanwil Kementerian Agama Provinsi Aceh', 'SAMSUL BAHRI', 'M DAUD PAKEH', '196804111993031005', '196012311990011001', 'PNS', 'PNS', '2020-07-23 10:41:10', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);

-- ----------------------------
-- Primary Key structure for table non_pns
-- ----------------------------
ALTER TABLE "public"."non_pns" ADD CONSTRAINT "NON_PNS_PK" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table orang
-- ----------------------------
CREATE INDEX "ANAK_AYAH_FK" ON "public"."orang" USING btree (
  "ayah_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ANAK_IBU_FK" ON "public"."orang" USING btree (
  "ibu_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IX_NIK" ON "public"."orang" USING btree (
  "nomor_id_document" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IX_ORANG_NAMA" ON "public"."orang" USING btree (
  "nama" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IX_ORANG_NAMA_LOWER" ON "public"."orang" USING btree (
  lower(nama::text) COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IX_ORANG_TGL_LHR" ON "public"."orang" USING btree (
  "tgl_lhr" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "ORANG_AGAMA_FK" ON "public"."orang" USING btree (
  "agama_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ORANG_JENISDOK_FK" ON "public"."orang" USING btree (
  "jenis_id_dokumen_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ORANG_JENISKAWIN_FK" ON "public"."orang" USING btree (
  "jenis_kawin_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ORANG_LAHIR_FK" ON "public"."orang" USING btree (
  "kabupaten_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "ORANG_TKPENDIDIKAN_FK" ON "public"."orang" USING btree (
  "tingkat_pendidikan_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table orang
-- ----------------------------
ALTER TABLE "public"."orang" ADD CONSTRAINT "ORANG_PK" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table orang_bahasa
-- ----------------------------
ALTER TABLE "public"."orang_bahasa" ADD CONSTRAINT "PK_ORANG_BAHASA" PRIMARY KEY ("orang_id", "bahasa_id");

-- ----------------------------
-- Indexes structure for table orang_pendidikan
-- ----------------------------
CREATE INDEX "IX_ORG_PENDIDKN" ON "public"."orang_pendidikan" USING btree (
  "id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "fki_org_pendidikn_id_fk" ON "public"."orang_pendidikan" USING btree (
  "pendidikan_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table pns
-- ----------------------------
CREATE INDEX "IX_PNS_BKNCOD" ON "public"."pns" USING btree (
  "pns_bkncod" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "IX_PNS_NIPBARU" ON "public"."pns" USING btree (
  "nip_baru" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "IX_PNS_NIPBARULOWER" ON "public"."pns" USING btree (
  lower(nip_baru::text) COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "IX_PNS_NIPLAMA" ON "public"."pns" USING btree (
  "nip_lama" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "IX_PNS_NIPLAMALOWER" ON "public"."pns" USING btree (
  lower(nip_lama::text) COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IX_PNS_NP_CPNS_NOMOR" ON "public"."pns" USING btree (
  "np_cpns_nomor" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IX_PNS_TANGGAL_DITETAPKAN" ON "public"."pns" USING btree (
  "tanggal_ditetapkan_nip" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "PNSINDUK_INSTANSI_FK" ON "public"."pns" USING btree (
  "instansi_induk_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNSINDUK_SATUANKERJA_FK" ON "public"."pns" USING btree (
  "satuan_kerja_induk_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNSKERJA_INSTANSI_FK" ON "public"."pns" USING btree (
  "instansi_kerja_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNSKERJA_LOKASI_FK" ON "public"."pns" USING btree (
  "lokasi_kerja_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNSKERJA_SATUANKERJA_FK" ON "public"."pns" USING btree (
  "satuan_kerja_kerja_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNSTERT_JABATAN_FK" ON "public"."pns" USING btree (
  "jabatan_fungsional_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNSUMUM_JABATANFUNG_FK" ON "public"."pns" USING btree (
  "jabatan_fungsional_umum_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_GOLONGAN_AWAL_FK" ON "public"."pns" USING btree (
  "golongan_awal_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_GOLONGAN_FK" ON "public"."pns" USING btree (
  "golongan_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_JENISJABATAN_FK" ON "public"."pns" USING btree (
  "jenis_jabatan_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_JENISPEGAWAI_FK" ON "public"."pns" USING btree (
  "jenis_pegawai_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_KEDHUK_FK" ON "public"."pns" USING btree (
  "kedudukan_hukum_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_KPKN_FK" ON "public"."pns" USING btree (
  "kpkn_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_TMT_CPNS" ON "public"."pns" USING btree (
  "tmt_cpns" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_TMT_GOLONGAN" ON "public"."pns" USING btree (
  "tmt_golongan" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_TMT_PNS" ON "public"."pns" USING btree (
  "tmt_pns" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_UNOR_FK" ON "public"."pns" USING btree (
  "unor_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table pns
-- ----------------------------
ALTER TABLE "public"."pns" ADD CONSTRAINT "pns_pk" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pns_orang_istri
-- ----------------------------
CREATE INDEX "PNSORIS_OR_FK" ON "public"."pns_orang_istri" USING btree (
  "orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNSORIS_PNS_FK" ON "public"."pns_orang_istri" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table pns_orang_istri
-- ----------------------------
ALTER TABLE "public"."pns_orang_istri" ADD CONSTRAINT "PK_PNS_ORANG_ISTRI" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_anak
-- ----------------------------
ALTER TABLE "public"."rw_anak" ADD CONSTRAINT "PK_RW_ANAK" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_berkas_peremajaan
-- ----------------------------
ALTER TABLE "public"."rw_berkas_peremajaan" ADD CONSTRAINT "SYS_C0034583" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_berkas_udm
-- ----------------------------
ALTER TABLE "public"."rw_berkas_udm" ADD CONSTRAINT "SYS_C0030517" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_cltn
-- ----------------------------
CREATE INDEX "TYPE_CLTN_FK" ON "public"."rw_cltn" USING btree (
  "cltn_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_cltn
-- ----------------------------
ALTER TABLE "public"."rw_cltn" ADD CONSTRAINT "PK_RW_CLTN" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_honorer
-- ----------------------------
CREATE INDEX "RW_HONORERTERTINGGI_PDDKN_FK" ON "public"."rw_honorer" USING btree (
  "pendidikan_tertinggi_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_HONORER_INSTANSI_FK" ON "public"."rw_honorer" USING btree (
  "instansi_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_HONORER_PDDKN_FK" ON "public"."rw_honorer" USING btree (
  "pendidikan_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_HONORER_UNOR_FK" ON "public"."rw_honorer" USING btree (
  "unor_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_honorer
-- ----------------------------
ALTER TABLE "public"."rw_honorer" ADD CONSTRAINT "PK_RW_HONOR" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_hukuman_disiplin
-- ----------------------------
CREATE INDEX "HUKUMAN_GOL_FK" ON "public"."rw_hukuman_disiplin" USING btree (
  "golongan_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "HUKUMAN_KEDHUK_FK" ON "public"."rw_hukuman_disiplin" USING btree (
  "kedudukan_hukum_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "HUKUMAN_PNS_FK" ON "public"."rw_hukuman_disiplin" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_HUKUMAN_FK" ON "public"."rw_hukuman_disiplin" USING btree (
  "jenis_hukuman_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_hukuman_disiplin
-- ----------------------------
ALTER TABLE "public"."rw_hukuman_disiplin" ADD CONSTRAINT "PK_RW_HUKUMAN_DISIPLIN" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_jabatan
-- ----------------------------
CREATE INDEX "PNS_JABATAN_ASAL" ON "public"."rw_jabatan" USING btree (
  "asal_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_JABATAN_FK" ON "public"."rw_jabatan" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_JABATAN_INST_FK" ON "public"."rw_jabatan" USING btree (
  "instansi_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_JABATAN_JENIS_FK" ON "public"."rw_jabatan" USING btree (
  "jenis_jabatan_id" "pg_catalog"."numeric_ops" ASC NULLS LAST
);
CREATE INDEX "RW_JABATAN_UNOR_FK" ON "public"."rw_jabatan" USING btree (
  "unor_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_JAB_ESELON_FK" ON "public"."rw_jabatan" USING btree (
  "eselon_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_JAB_JAB_FUN_FK" ON "public"."rw_jabatan" USING btree (
  "jabatan_fungsional_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_JAB_JAB_FUN_UMUM_FK" ON "public"."rw_jabatan" USING btree (
  "jabatan_fungsional_umum_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_jabatan
-- ----------------------------
ALTER TABLE "public"."rw_jabatan" ADD CONSTRAINT "PK_RW_JABATAN" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_jabatan_del
-- ----------------------------
ALTER TABLE "public"."rw_jabatan_del" ADD CONSTRAINT "PK_RW_JABATAN_DEL" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_kompetensi
-- ----------------------------
ALTER TABLE "public"."rw_kompetensi" ADD CONSTRAINT "RW_KOMPETENSI_PK" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_kursus
-- ----------------------------
CREATE INDEX "RW_KURSUS_INSTANSI_FK" ON "public"."rw_kursus" USING btree (
  "instansi_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_KURSUS_KURSUS_FK" ON "public"."rw_kursus" USING btree (
  "jenis_kursus_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_KURSUS_PNS_FK" ON "public"."rw_kursus" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_kursus
-- ----------------------------
ALTER TABLE "public"."rw_kursus" ADD CONSTRAINT "PK_RW_KURSUS" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_kursus_nonpns
-- ----------------------------
ALTER TABLE "public"."rw_kursus_nonpns" ADD CONSTRAINT "RW_KURSUS_NONPNS_PK" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_latihan_struktural
-- ----------------------------
CREATE INDEX "LAT_STRUK_FK" ON "public"."rw_latihan_struktural" USING btree (
  "latihan_struktural_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PNS_LAT_STRUK_FK" ON "public"."rw_latihan_struktural" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_latihan_struktural
-- ----------------------------
ALTER TABLE "public"."rw_latihan_struktural" ADD CONSTRAINT "PK_RW_LATIHAN_STRUKTURAL" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_latihan_struktural_nonpns
-- ----------------------------
ALTER TABLE "public"."rw_latihan_struktural_nonpns" ADD CONSTRAINT "RW_LATIHAN_STRUKTURAL_NONPNSPK" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_masa_kerja
-- ----------------------------
CREATE INDEX "MASAKERJA_CALONPENG_FK" ON "public"."rw_masa_kerja" USING btree (
  "orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_masa_kerja
-- ----------------------------
ALTER TABLE "public"."rw_masa_kerja" ADD CONSTRAINT "PK_MASA_KERJA" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_organisasi
-- ----------------------------
ALTER TABLE "public"."rw_organisasi" ADD CONSTRAINT "PK__RW_ORGAN__3214EC27804AE493" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_pembatalan_nip
-- ----------------------------
CREATE UNIQUE INDEX "PK_RW_PEMBATALAN_NIP" ON "public"."rw_pembatalan_nip" USING btree (
  "id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table rw_pemberhentian
-- ----------------------------
CREATE INDEX "IX_ASALID_RWHEN" ON "public"."rw_pemberhentian" USING btree (
  "asal_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_HENTI_JENIS_HENTI_FK" ON "public"."rw_pemberhentian" USING btree (
  "jenis_henti_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_HENTI_PNS_FK" ON "public"."rw_pemberhentian" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_pemberhentian
-- ----------------------------
ALTER TABLE "public"."rw_pemberhentian" ADD CONSTRAINT "PK_RW_PERBENHENTIAN" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_penghargaan
-- ----------------------------
CREATE INDEX "HARGA_PNS_FK" ON "public"."rw_penghargaan" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_HARGA_FK" ON "public"."rw_penghargaan" USING btree (
  "harga_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_penghargaan
-- ----------------------------
ALTER TABLE "public"."rw_penghargaan" ADD CONSTRAINT "PK_RW_PENHARGAAN" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_penghargaan_nonpns
-- ----------------------------
ALTER TABLE "public"."rw_penghargaan_nonpns" ADD CONSTRAINT "PK_RW_PENGHARGAAN_NON" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_pindah_instansi
-- ----------------------------
CREATE INDEX "JAB_FUN_BARU_FK" ON "public"."rw_pindah_instansi" USING btree (
  "jabatan_fungsional_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "JAB_FUN_LAMA_FK" ON "public"."rw_pindah_instansi" USING btree (
  "jabatan_fungsional_lama_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "JENIS_JABATAN_BARU_FK" ON "public"."rw_pindah_instansi" USING btree (
  "jenis_jabatan_baru_id" "pg_catalog"."numeric_ops" ASC NULLS LAST
);
CREATE INDEX "JENIS_JABATAN_LAMA_FK" ON "public"."rw_pindah_instansi" USING btree (
  "jenis_jabatan_lama_id" "pg_catalog"."numeric_ops" ASC NULLS LAST
);
CREATE INDEX "KPKN_BARU_FK" ON "public"."rw_pindah_instansi" USING btree (
  "kpkn_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "LOK_KERJA_LAMA_FK" ON "public"."rw_pindah_instansi" USING btree (
  "lokasi_kerja_lama_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "LOK_KER_BARU_FK" ON "public"."rw_pindah_instansi" USING btree (
  "lokasi_kerja_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PIDPBDPK_INS_KEJ_LAMA_FK" ON "public"."rw_pindah_instansi" USING btree (
  "instansi_kerja_lama_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PIDPBDPK_SAT_KERJA_BARU_FK" ON "public"."rw_pindah_instansi" USING btree (
  "satuan_kerja_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PIDPBDPK_SAT_KERJA_LAMA_FK" ON "public"."rw_pindah_instansi" USING btree (
  "satuan_kerja_lama_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PI_INS_IND_BARU_FK" ON "public"."rw_pindah_instansi" USING btree (
  "instansi_induk_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PI_INS_IND_LAMA_FK" ON "public"."rw_pindah_instansi" USING btree (
  "instansi_induk_lama_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "PI_INS_KRJ_BARU_FK" ON "public"."rw_pindah_instansi" USING btree (
  "instansi_kerja_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PI_ESELON_FK" ON "public"."rw_pindah_instansi" USING btree (
  "eselon_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PI_JENIS_PEGAWAI_FK" ON "public"."rw_pindah_instansi" USING btree (
  "jenis_pegawai_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PI_PNS_FK" ON "public"."rw_pindah_instansi" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "UNOR_BARU_FK" ON "public"."rw_pindah_instansi" USING btree (
  "unor_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "UNOR_LAMA_FK" ON "public"."rw_pindah_instansi" USING btree (
  "unor_lama_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_pindah_instansi
-- ----------------------------
ALTER TABLE "public"."rw_pindah_instansi" ADD CONSTRAINT "PK_RW_PINDAH_INSTANSI" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_pns_pasangan
-- ----------------------------
CREATE INDEX "de_pns_pasangan_pasangan_orang_id_idx" ON "public"."rw_pns_pasangan" USING btree (
  "pasangan_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "de_pns_pasangan_pns_orang_id_idx" ON "public"."rw_pns_pasangan" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table rw_pns_unor
-- ----------------------------
CREATE INDEX "IX_ASALID_RWPNSUNOR" ON "public"."rw_pns_unor" USING btree (
  "asal_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RWPNSUNORPNS_PNS_FK" ON "public"."rw_pns_unor" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RWPNSUNORPNS_UBARU_FK" ON "public"."rw_pns_unor" USING btree (
  "unor_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_pns_unor
-- ----------------------------
ALTER TABLE "public"."rw_pns_unor" ADD CONSTRAINT "PK_RW_PNS_UNOR" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_pppk
-- ----------------------------
ALTER TABLE "public"."rw_pppk" ADD CONSTRAINT "SYS_C00306507" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_prestasi
-- ----------------------------
ALTER TABLE "public"."rw_prestasi" ADD CONSTRAINT "RW_PRESTASI_PK" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_prestasi_nonpns
-- ----------------------------
ALTER TABLE "public"."rw_prestasi_nonpns" ADD CONSTRAINT "RW_PRESTASI_NONPNS_PK" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_profesi
-- ----------------------------
CREATE INDEX "RW_PROF_PNS_FK" ON "public"."rw_profesi" USING btree (
  "pns_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PROF_PROF_FK" ON "public"."rw_profesi" USING btree (
  "profesi_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_profesi
-- ----------------------------
ALTER TABLE "public"."rw_profesi" ADD CONSTRAINT "PK_RW_PROFESI" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_pwk
-- ----------------------------
CREATE INDEX "IX_ASALID_RWPWK" ON "public"."rw_pwk" USING btree (
  "asal_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PWK_FK" ON "public"."rw_pwk" USING btree (
  "kpkn_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PWK_INSTANSI_FK" ON "public"."rw_pwk" USING btree (
  "instansi_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PWK_LOK_KERJA_FK" ON "public"."rw_pwk" USING btree (
  "lokasi_kerja_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PWK_PNS_FK" ON "public"."rw_pwk" USING btree (
  "pns_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PWK_SAT_KER_FK" ON "public"."rw_pwk" USING btree (
  "satuan_kerja_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "RW_PWK_UNOR_BARU_FK" ON "public"."rw_pwk" USING btree (
  "unor_baru_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_pwk
-- ----------------------------
ALTER TABLE "public"."rw_pwk" ADD CONSTRAINT "PK_RW_PWK" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rw_riwayat_kepanitiaan
-- ----------------------------
ALTER TABLE "public"."rw_riwayat_kepanitiaan" ADD CONSTRAINT "PK__RW_RIWAY__3214EC278F3E24CD" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table rw_skp
-- ----------------------------
CREATE INDEX "idx_orang_pns_id" ON "public"."rw_skp" USING btree (
  "pnsdinilai_orang_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table rw_skp
-- ----------------------------
ALTER TABLE "public"."rw_skp" ADD CONSTRAINT "SYS_C00171537" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table orang_pendidikan
-- ----------------------------
ALTER TABLE "public"."orang_pendidikan" ADD CONSTRAINT "fk_orang_pendidikan_orang_id" FOREIGN KEY ("orang_id") REFERENCES "public"."orang" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMENT ON CONSTRAINT "fk_orang_pendidikan_orang_id" ON "public"."orang_pendidikan" IS 'foreign key ke tabel orang';

-- ----------------------------
-- Foreign Keys structure for table rw_angka_kredit
-- ----------------------------
ALTER TABLE "public"."rw_angka_kredit" ADD CONSTRAINT "fk_rw_angka_kredit__pns" FOREIGN KEY ("pns_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_cltn
-- ----------------------------
ALTER TABLE "public"."rw_cltn" ADD CONSTRAINT "fk_rw_cltn__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_dp3
-- ----------------------------
ALTER TABLE "public"."rw_dp3" ADD CONSTRAINT "fk_rw_dp3__pns__atasanpejabatpenilai_orang_id" FOREIGN KEY ("atasanpejabatpenilai_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."rw_dp3" ADD CONSTRAINT "fk_rw_dp3__pns__pejabatpenilai_orang_id" FOREIGN KEY ("pejabatpenilai_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."rw_dp3" ADD CONSTRAINT "fk_rw_dp3__pns__pnsdinilai_orang_id" FOREIGN KEY ("pnsdinilai_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_golongan
-- ----------------------------
ALTER TABLE "public"."rw_golongan" ADD CONSTRAINT "fk_rw_golongan__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_hukuman_disiplin
-- ----------------------------
ALTER TABLE "public"."rw_hukuman_disiplin" ADD CONSTRAINT "fk_rw_hukuman_disiplin__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_jabatan
-- ----------------------------
ALTER TABLE "public"."rw_jabatan" ADD CONSTRAINT "fk_rw_jabatan__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_jabatan_del
-- ----------------------------
ALTER TABLE "public"."rw_jabatan_del" ADD CONSTRAINT "fk_rw_jabatan_del__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_kedudukan_hukum
-- ----------------------------
ALTER TABLE "public"."rw_kedudukan_hukum" ADD CONSTRAINT "fk_rw_kedudukan_hukum__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_kgb
-- ----------------------------
ALTER TABLE "public"."rw_kgb" ADD CONSTRAINT "fk_rw_kgb__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_kompetensi
-- ----------------------------
ALTER TABLE "public"."rw_kompetensi" ADD CONSTRAINT "fk_rw_kompetensi__pns" FOREIGN KEY ("id_pns") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_kursus
-- ----------------------------
ALTER TABLE "public"."rw_kursus" ADD CONSTRAINT "fk_rw_kursus__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_latihan_struktural
-- ----------------------------
ALTER TABLE "public"."rw_latihan_struktural" ADD CONSTRAINT "fk_rw_latihan_struktural__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_organisasi
-- ----------------------------
ALTER TABLE "public"."rw_organisasi" ADD CONSTRAINT "fk_rw_organisasi__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_pembatalan_nip
-- ----------------------------
ALTER TABLE "public"."rw_pembatalan_nip" ADD CONSTRAINT "fk_rw_pembatalan_nip__pns__creaby_pns_id" FOREIGN KEY ("creaby_pns_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."rw_pembatalan_nip" ADD CONSTRAINT "fk_rw_pembatalan_nip__pns__pns_orang_id" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."rw_pembatalan_nip" ADD CONSTRAINT "fk_rw_pembatalan_nip__pns__updateby_pns_id" FOREIGN KEY ("updateby_pns_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_pemberhentian
-- ----------------------------
ALTER TABLE "public"."rw_pemberhentian" ADD CONSTRAINT "fk_rw_perbenhentian__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_penghargaan
-- ----------------------------
ALTER TABLE "public"."rw_penghargaan" ADD CONSTRAINT "fk_rw_penhargaan__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_penghargaan_nonpns
-- ----------------------------
ALTER TABLE "public"."rw_penghargaan_nonpns" ADD CONSTRAINT "fk_rw_penghargaan__nonpns" FOREIGN KEY ("non_pns_id") REFERENCES "public"."non_pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_pindah_instansi
-- ----------------------------
ALTER TABLE "public"."rw_pindah_instansi" ADD CONSTRAINT "fk_rw_pindah_instansi__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_pns_pasangan
-- ----------------------------
ALTER TABLE "public"."rw_pns_pasangan" ADD CONSTRAINT "fk_de_pns_pasangan_pns_orang_id" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMENT ON CONSTRAINT "fk_de_pns_pasangan_pns_orang_id" ON "public"."rw_pns_pasangan" IS 'foreign key ke tabel pns kolom id';

-- ----------------------------
-- Foreign Keys structure for table rw_pns_unor
-- ----------------------------
ALTER TABLE "public"."rw_pns_unor" ADD CONSTRAINT "fk_rw_pns_unor__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_pppk
-- ----------------------------
ALTER TABLE "public"."rw_pppk" ADD CONSTRAINT "fk_rw_pppk__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_prestasi
-- ----------------------------
ALTER TABLE "public"."rw_prestasi" ADD CONSTRAINT "fk_rw_prestasi__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_prestasi_nonpns
-- ----------------------------
ALTER TABLE "public"."rw_prestasi_nonpns" ADD CONSTRAINT "fk_rw_prestasi_nonpns__non_pns" FOREIGN KEY ("non_pns_id") REFERENCES "public"."non_pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_profesi
-- ----------------------------
ALTER TABLE "public"."rw_profesi" ADD CONSTRAINT "fk_rw_profesi__pns" FOREIGN KEY ("pns_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_pwk
-- ----------------------------
ALTER TABLE "public"."rw_pwk" ADD CONSTRAINT "fk_rw_pwk__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_riwayat_kepanitiaan
-- ----------------------------
ALTER TABLE "public"."rw_riwayat_kepanitiaan" ADD CONSTRAINT "fk_rw_riwayat_kepanitiaan__pns" FOREIGN KEY ("pns_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rw_skp
-- ----------------------------
ALTER TABLE "public"."rw_skp" ADD CONSTRAINT "fk_rw_skp__non_pns__atasan_non_pns_id" FOREIGN KEY ("atasan_non_pns_id") REFERENCES "public"."non_pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."rw_skp" ADD CONSTRAINT "fk_rw_skp__pns__atasanpejabatpenilai_orang_id" FOREIGN KEY ("atasanpejabatpenilai_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."rw_skp" ADD CONSTRAINT "fk_rw_skp__pns__pejabatpenilai_orang_id" FOREIGN KEY ("pejabatpenilai_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."rw_skp" ADD CONSTRAINT "fk_rw_skp__pns__pnsdinilai_orang_id" FOREIGN KEY ("pnsdinilai_orang_id") REFERENCES "public"."pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."rw_skp" ADD CONSTRAINT "fk_rw_skp_non__pns__penilai_non_pns_id" FOREIGN KEY ("penilai_non_pns_id") REFERENCES "public"."non_pns" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
