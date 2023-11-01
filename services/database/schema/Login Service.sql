CREATE TABLE "users" (
  "id" varchar PRIMARY KEY,
  "username" varchar,
  "password" varchar,
  "salt" varchar,
  "role_id" varchar,
  "created_at" timestamp
);

CREATE TABLE "user_info" (
  "user_id" varchar,
  "lastname" varchar,
  "firstname" varchar,
  "birthday" datetime,
  "gender" varchar
);

CREATE TABLE "roles" (
  "id" varchar PRIMARY KEY,
  "name" varchar,
  "description" varchar,
  "action_id" varchar
);

CREATE TABLE "actions" (
  "id" varchar PRIMARY KEY,
  "view_able" varchar,
  "edit_able" varchar
);

CREATE TABLE "user_access_token" (
  "user_id" varchar,
  "token_id" varchar
);

CREATE TABLE "access_token" (
  "id" varchar PRIMARY KEY,
  "token" varchar,
  "expried_time" datetime,
  "role_id" varchar
);

CREATE TABLE "user_refresh_token" (
  "user_id" varchar,
  "token_id" varchar
);

CREATE TABLE "refresh_token" (
  "id" varchar PRIMARY KEY,
  "token" varchar,
  "status" bool,
  "expried_time" datetime,
  "role_id" varchar
);

ALTER TABLE "user_access_token" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_access_token" ADD FOREIGN KEY ("token_id") REFERENCES "access_token" ("id");

ALTER TABLE "user_refresh_token" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_refresh_token" ADD FOREIGN KEY ("token_id") REFERENCES "refresh_token" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "roles" ADD FOREIGN KEY ("action_id") REFERENCES "actions" ("id");

ALTER TABLE "user_info" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");