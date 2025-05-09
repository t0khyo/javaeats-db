-- ========================================
-- Exertions
-- ========================================

CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- ========================================
-- ENUMS, LOOKUPS, AND STATIC REFERENCE TABLES
-- ========================================

\i database/schemas/tabels/roles.sql
\i database/schemas/tabels/user_type.sql
\i database/schemas/tabels/payment_integration_type.sql
\i database/schemas/tabels/order_status.sql
\i database/schemas/tabels/transaction_status.sql
\i database/schemas/tabels/payment_method.sql
\i database/schemas/tabels/category.sql

-- ========================================
-- USER AND CUSTOMER TABLES
-- ========================================

\i database/schemas/tabels/users.sql
\i database/schemas/tabels/user_role.sql
\i database/schemas/tabels/customer.sql

-- ========================================
-- MENU AND RESTAURANT
-- ========================================

\i database/schemas/tabels/restaurant.sql
\i database/schemas/tabels/restaurant_category.sql
\i database/schemas/tabels/restaurant_details.sql
\i database/schemas/tabels/menu.sql
\i database/schemas/tabels/menu_item.sql

-- ========================================
-- USER ADDRESSES AND CART
-- ========================================

\i database/schemas/tabels/address.sql
\i database/schemas/tabels/payment_type_config.sql
\i database/schemas/tabels/preferred_payment_setting.sql
\i database/schemas/tabels/cart.sql
\i database/schemas/tabels/cart_item.sql

-- ========================================
-- ORDER FLOW AND TRANSACTIONS
-- ========================================

\i database/schemas/tabels/orders.sql
\i database/schemas/tabels/order_item.sql
\i database/schemas/tabels/order_tracking.sql
\i database/schemas/tabels/promotion.sql
\i database/schemas/tabels/transactions.sql
\i database/schemas/tabels/transaction_details.sql

-- ========================================
-- REVIEWS AND AUDIT TRAIL
-- ========================================

\i database/schemas/tabels/review.sql
\i database/schemas/tabels/auditing.sql
