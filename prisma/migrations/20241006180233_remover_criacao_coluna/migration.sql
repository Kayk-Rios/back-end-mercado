/*
  Warnings:

  - You are about to drop the column `marca` on the `produtos` table. All the data in the column will be lost.
  - You are about to drop the column `modelo` on the `produtos` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_produtos" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT NOT NULL,
    "descricao" TEXT NOT NULL
);
INSERT INTO "new_produtos" ("descricao", "id", "nome") SELECT "descricao", "id", "nome" FROM "produtos";
DROP TABLE "produtos";
ALTER TABLE "new_produtos" RENAME TO "produtos";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
