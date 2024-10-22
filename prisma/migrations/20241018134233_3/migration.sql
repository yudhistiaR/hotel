/*
  Warnings:

  - Added the required column `id_user` to the `Kamar` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `kamar` ADD COLUMN `id_user` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `Kamar` ADD CONSTRAINT `Kamar_id_user_fkey` FOREIGN KEY (`id_user`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
