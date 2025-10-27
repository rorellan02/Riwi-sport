/*
 Navicat Premium Dump SQL

 Source Server         : sisa
 Source Server Type    : PostgreSQL
 Source Server Version : 150014 (150014)
 Source Host           : localhost:5433
 Source Catalog        : ecommerce
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150014 (150014)
 File Encoding         : 65001

 Date: 25/09/2025 11:35:42
*/


-- ----------------------------
-- Sequence structure for access_id_access_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."access_id_access_seq";
CREATE SEQUENCE "public"."access_id_access_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."access_id_access_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for address_id_address_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."address_id_address_seq";
CREATE SEQUENCE "public"."address_id_address_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."address_id_address_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for category_id_category_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."category_id_category_seq";
CREATE SEQUENCE "public"."category_id_category_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."category_id_category_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for customer_id_customer_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."customer_id_customer_seq";
CREATE SEQUENCE "public"."customer_id_customer_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."customer_id_customer_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for gender_id_gender_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gender_id_gender_seq";
CREATE SEQUENCE "public"."gender_id_gender_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."gender_id_gender_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for order_id_order_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_id_order_seq";
CREATE SEQUENCE "public"."order_id_order_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_id_order_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for order_item_id_order_item_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_item_id_order_item_seq";
CREATE SEQUENCE "public"."order_item_id_order_item_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_item_id_order_item_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for order_payment_id_order_payment_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_payment_id_order_payment_seq";
CREATE SEQUENCE "public"."order_payment_id_order_payment_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_payment_id_order_payment_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for order_status_id_order_status_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_status_id_order_status_seq";
CREATE SEQUENCE "public"."order_status_id_order_status_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."order_status_id_order_status_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for payment_method_id_payment_method_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."payment_method_id_payment_method_seq";
CREATE SEQUENCE "public"."payment_method_id_payment_method_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."payment_method_id_payment_method_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for product_id_product_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."product_id_product_seq";
CREATE SEQUENCE "public"."product_id_product_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."product_id_product_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for role_id_role_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."role_id_role_seq";
CREATE SEQUENCE "public"."role_id_role_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."role_id_role_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for seller_id_seller_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seller_id_seller_seq";
CREATE SEQUENCE "public"."seller_id_seller_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."seller_id_seller_seq" OWNER TO "postgres";

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS "public"."access";
CREATE TABLE "public"."access" (
  "id_access" int4 NOT NULL DEFAULT nextval('access_id_access_seq'::regclass),
  "role_id" int4 NOT NULL,
  "username" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."access" OWNER TO "postgres";

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS "public"."address";
CREATE TABLE "public"."address" (
  "id_address" int4 NOT NULL DEFAULT nextval('address_id_address_seq'::regclass),
  "country" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "department" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "city" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "postal_code" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "street" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "number" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."address" OWNER TO "postgres";


-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "public"."category";
CREATE TABLE "public"."category" (
  "id_category" int4 NOT NULL DEFAULT nextval('category_id_category_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."category" OWNER TO "postgres";


-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS "public"."customer";
CREATE TABLE "public"."customer" (
  "id_customer" int4 NOT NULL DEFAULT nextval('customer_id_customer_seq'::regclass),
  "address_id" int4 NOT NULL,
  "gender_id" int4 NOT NULL,
  "full_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "phone" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "birth_date" timestamptz(6) NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."customer" OWNER TO "postgres";

-- ----------------------------
-- Table structure for gender
-- ----------------------------
DROP TABLE IF EXISTS "public"."gender";
CREATE TABLE "public"."gender" (
  "id_gender" int4 NOT NULL DEFAULT nextval('gender_id_gender_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."gender" OWNER TO "postgres";


-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS "public"."order";
CREATE TABLE "public"."order" (
  "id_order" int4 NOT NULL DEFAULT nextval('order_id_order_seq'::regclass),
  "customer_id" int4 NOT NULL,
  "seller_id" int4 NOT NULL,
  "payment_method_id" int4 NOT NULL,
  "order_status_id" int4 NOT NULL,
  "total" numeric(12,2) NOT NULL,
  "payment_date" timestamptz(6) NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."order" OWNER TO "postgres";


-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_item";
CREATE TABLE "public"."order_item" (
  "id_order_item" int4 NOT NULL DEFAULT nextval('order_item_id_order_item_seq'::regclass),
  "order_id" int4 NOT NULL,
  "product_id" int4 NOT NULL,
  "amount" int4 NOT NULL,
  "price" numeric(12,2) NOT NULL,
  "subtotal" numeric(12,2) NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."order_item" OWNER TO "postgres";


-- ----------------------------
-- Table structure for order_payment
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_payment";
CREATE TABLE "public"."order_payment" (
  "id_order_payment" int4 NOT NULL DEFAULT nextval('order_payment_id_order_payment_seq'::regclass),
  "order_id" int4 NOT NULL,
  "payment_method_id" int4 NOT NULL,
  "amount" numeric(12,2) NOT NULL,
  "payment_date" timestamptz(6) NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."order_payment" OWNER TO "postgres";



-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_status";
CREATE TABLE "public"."order_status" (
  "id_order_status" int4 NOT NULL DEFAULT nextval('order_status_id_order_status_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."order_status" OWNER TO "postgres";


-- ----------------------------
-- Table structure for payment_method
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment_method";
CREATE TABLE "public"."payment_method" (
  "id_payment_method" int4 NOT NULL DEFAULT nextval('payment_method_id_payment_method_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."payment_method" OWNER TO "postgres";



-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS "public"."product";
CREATE TABLE "public"."product" (
  "id_product" int4 NOT NULL DEFAULT nextval('product_id_product_seq'::regclass),
  "category_id" int4 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "price" numeric(12,2) NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "stock" int4 DEFAULT 0,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."product" OWNER TO "postgres";


-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS "public"."role";
CREATE TABLE "public"."role" (
  "id_role" int4 NOT NULL DEFAULT nextval('role_id_role_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;
ALTER TABLE "public"."role" OWNER TO "postgres";

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS "public"."seller";
CREATE TABLE "public"."seller" (
  "id_seller" int4 NOT NULL DEFAULT nextval('seller_id_seller_seq'::regclass),
  "access_id" int4 NOT NULL,
  "fullname" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "phone" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "birth_date" timestamptz(6) NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL,
  "gender_id" int4
)
;
ALTER TABLE "public"."seller" OWNER TO "postgres";

-

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."access_id_access_seq"
OWNED BY "public"."access"."id_access";
SELECT setval('"public"."access_id_access_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."address_id_address_seq"
OWNED BY "public"."address"."id_address";
SELECT setval('"public"."address_id_address_seq"', 50, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."category_id_category_seq"
OWNED BY "public"."category"."id_category";
SELECT setval('"public"."category_id_category_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."customer_id_customer_seq"
OWNED BY "public"."customer"."id_customer";
SELECT setval('"public"."customer_id_customer_seq"', 50, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gender_id_gender_seq"
OWNED BY "public"."gender"."id_gender";
SELECT setval('"public"."gender_id_gender_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_id_order_seq"
OWNED BY "public"."order"."id_order";
SELECT setval('"public"."order_id_order_seq"', 500, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_item_id_order_item_seq"
OWNED BY "public"."order_item"."id_order_item";
SELECT setval('"public"."order_item_id_order_item_seq"', 1496, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_payment_id_order_payment_seq"
OWNED BY "public"."order_payment"."id_order_payment";
SELECT setval('"public"."order_payment_id_order_payment_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_status_id_order_status_seq"
OWNED BY "public"."order_status"."id_order_status";
SELECT setval('"public"."order_status_id_order_status_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."payment_method_id_payment_method_seq"
OWNED BY "public"."payment_method"."id_payment_method";
SELECT setval('"public"."payment_method_id_payment_method_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."product_id_product_seq"
OWNED BY "public"."product"."id_product";
SELECT setval('"public"."product_id_product_seq"', 1000, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."role_id_role_seq"
OWNED BY "public"."role"."id_role";
SELECT setval('"public"."role_id_role_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."seller_id_seller_seq"
OWNED BY "public"."seller"."id_seller";
SELECT setval('"public"."seller_id_seller_seq"', 5, true);

-- ----------------------------
-- Uniques structure for table access
-- ----------------------------
ALTER TABLE "public"."access" ADD CONSTRAINT "access_username_key" UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table access
-- ----------------------------
ALTER TABLE "public"."access" ADD CONSTRAINT "access_pkey" PRIMARY KEY ("id_access");

-- ----------------------------
-- Primary Key structure for table address
-- ----------------------------
ALTER TABLE "public"."address" ADD CONSTRAINT "address_pkey" PRIMARY KEY ("id_address");

-- ----------------------------
-- Uniques structure for table category
-- ----------------------------
ALTER TABLE "public"."category" ADD CONSTRAINT "category_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "public"."category" ADD CONSTRAINT "category_pkey" PRIMARY KEY ("id_category");

-- ----------------------------
-- Uniques structure for table customer
-- ----------------------------
ALTER TABLE "public"."customer" ADD CONSTRAINT "customer_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table customer
-- ----------------------------
ALTER TABLE "public"."customer" ADD CONSTRAINT "customer_pkey" PRIMARY KEY ("id_customer");

-- ----------------------------
-- Uniques structure for table gender
-- ----------------------------
ALTER TABLE "public"."gender" ADD CONSTRAINT "gender_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table gender
-- ----------------------------
ALTER TABLE "public"."gender" ADD CONSTRAINT "gender_pkey" PRIMARY KEY ("id_gender");

-- ----------------------------
-- Primary Key structure for table order
-- ----------------------------
ALTER TABLE "public"."order" ADD CONSTRAINT "order_pkey" PRIMARY KEY ("id_order");

-- ----------------------------
-- Primary Key structure for table order_item
-- ----------------------------
ALTER TABLE "public"."order_item" ADD CONSTRAINT "order_item_pkey" PRIMARY KEY ("id_order_item");

-- ----------------------------
-- Primary Key structure for table order_payment
-- ----------------------------
ALTER TABLE "public"."order_payment" ADD CONSTRAINT "order_payment_pkey" PRIMARY KEY ("id_order_payment");

-- ----------------------------
-- Uniques structure for table order_status
-- ----------------------------
ALTER TABLE "public"."order_status" ADD CONSTRAINT "order_status_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table order_status
-- ----------------------------
ALTER TABLE "public"."order_status" ADD CONSTRAINT "order_status_pkey" PRIMARY KEY ("id_order_status");

-- ----------------------------
-- Uniques structure for table payment_method
-- ----------------------------
ALTER TABLE "public"."payment_method" ADD CONSTRAINT "payment_method_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table payment_method
-- ----------------------------
ALTER TABLE "public"."payment_method" ADD CONSTRAINT "payment_method_pkey" PRIMARY KEY ("id_payment_method");

-- ----------------------------
-- Uniques structure for table product
-- ----------------------------
ALTER TABLE "public"."product" ADD CONSTRAINT "product_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE "public"."product" ADD CONSTRAINT "product_pkey" PRIMARY KEY ("id_product");

-- ----------------------------
-- Uniques structure for table role
-- ----------------------------
ALTER TABLE "public"."role" ADD CONSTRAINT "role_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "public"."role" ADD CONSTRAINT "role_pkey" PRIMARY KEY ("id_role");

-- ----------------------------
-- Uniques structure for table seller
-- ----------------------------
ALTER TABLE "public"."seller" ADD CONSTRAINT "seller_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table seller
-- ----------------------------
ALTER TABLE "public"."seller" ADD CONSTRAINT "seller_pkey" PRIMARY KEY ("id_seller");

-- ----------------------------
-- Foreign Keys structure for table access
-- ----------------------------
ALTER TABLE "public"."access" ADD CONSTRAINT "access_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."role" ("id_role") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table customer
-- ----------------------------
ALTER TABLE "public"."customer" ADD CONSTRAINT "customer_address_id_fkey" FOREIGN KEY ("address_id") REFERENCES "public"."address" ("id_address") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."customer" ADD CONSTRAINT "customer_gender_id_fkey" FOREIGN KEY ("gender_id") REFERENCES "public"."gender" ("id_gender") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table order
-- ----------------------------
ALTER TABLE "public"."order" ADD CONSTRAINT "order_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."customer" ("id_customer") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."order" ADD CONSTRAINT "order_order_status_id_fkey" FOREIGN KEY ("order_status_id") REFERENCES "public"."order_status" ("id_order_status") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."order" ADD CONSTRAINT "order_payment_method_id_fkey" FOREIGN KEY ("payment_method_id") REFERENCES "public"."payment_method" ("id_payment_method") ON DELETE NO ACTION ON UPDATE CASCADE;
ALTER TABLE "public"."order" ADD CONSTRAINT "order_seller_id_fkey" FOREIGN KEY ("seller_id") REFERENCES "public"."seller" ("id_seller") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table order_item
-- ----------------------------
ALTER TABLE "public"."order_item" ADD CONSTRAINT "order_item_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id_order") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."order_item" ADD CONSTRAINT "order_item_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "public"."product" ("id_product") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table order_payment
-- ----------------------------
ALTER TABLE "public"."order_payment" ADD CONSTRAINT "order_payment_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id_order") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."order_payment" ADD CONSTRAINT "order_payment_payment_method_id_fkey" FOREIGN KEY ("payment_method_id") REFERENCES "public"."payment_method" ("id_payment_method") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table product
-- ----------------------------
ALTER TABLE "public"."product" ADD CONSTRAINT "product_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."category" ("id_category") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table seller
-- ----------------------------
ALTER TABLE "public"."seller" ADD CONSTRAINT "seller_access_id_fkey" FOREIGN KEY ("access_id") REFERENCES "public"."access" ("id_access") ON DELETE NO ACTION ON UPDATE CASCADE;
ALTER TABLE "public"."seller" ADD CONSTRAINT "seller_gender_id_fkey" FOREIGN KEY ("gender_id") REFERENCES "public"."gender" ("id_gender") ON DELETE SET NULL ON UPDATE CASCADE;
