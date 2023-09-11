--liquibase formatted sql
                    create index concurrently testing_btree_1 on public.cva_dtl_default_config_value using brin (date(created_at));
                    --rollback 
                    drop index concurrently testing_btree_1;
