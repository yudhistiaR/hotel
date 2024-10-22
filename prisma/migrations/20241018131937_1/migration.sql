-- CreateTable
CREATE TABLE `User` (
    `id` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NULL,
    `password` VARCHAR(191) NULL,
    `nama_lengkap` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `no_telp` VARCHAR(191) NULL,
    `level` VARCHAR(191) NULL,
    `blok` VARCHAR(191) NULL,

    UNIQUE INDEX `User_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
