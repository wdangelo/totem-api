-- CreateTable
CREATE TABLE "tikets" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "tiket" TEXT NOT NULL,
    "listen" BOOLEAN NOT NULL DEFAULT true,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "initial_at" DATETIME NOT NULL,
    "final_at" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "tiket_service" (
    "userId" TEXT NOT NULL,
    "tiketId" TEXT NOT NULL,

    PRIMARY KEY ("userId", "tiketId"),
    CONSTRAINT "tiket_service_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "tiket_service_tiketId_fkey" FOREIGN KEY ("tiketId") REFERENCES "tikets" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
