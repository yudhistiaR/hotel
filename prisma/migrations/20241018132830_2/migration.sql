-- CreateTable
CREATE TABLE `Kategori` (
    `id` VARCHAR(191) NOT NULL,
    `nama_kategory` VARCHAR(191) NULL,
    `kategory_seo` VARCHAR(191) NULL,

    UNIQUE INDEX `Kategori_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Kamar` (
    `id` VARCHAR(191) NOT NULL,
    `nama_kamar` VARCHAR(191) NOT NULL,
    `no_kamar` VARCHAR(191) NOT NULL,
    `tahun` DATETIME(3) NOT NULL,
    `descriptio` VARCHAR(191) NOT NULL,
    `harga` INTEGER NOT NULL,
    `tgl_masuk` VARCHAR(191) NOT NULL,
    `disewa` VARCHAR(191) NOT NULL,
    `diskon` VARCHAR(191) NOT NULL,
    `maksimal` VARCHAR(191) NOT NULL,
    `id_kategory` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Kamar_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Kamar` ADD CONSTRAINT `Kamar_id_kategory_fkey` FOREIGN KEY (`id_kategory`) REFERENCES `Kategori`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
