
                    --liquibase formatted sql
                    
                    CREATE INDEX CONCURRENTLY rebuild_brin  on public.cva_dtl_default_config_value using brin (date(created_at);
                    
                    DROP INDEX CONCURRENTLY public.testing_btree_1;
                    
                    ALTER INDEX public.rebuild_brin RENAME TO testing_btree_1;
                    
                    --rollback 
                    
                    ALTER INDEX public.testing_btree_1 RENAME TO rebuild_brin;
                    
                    CREATE INDEX CONCURRENTLY testing_btree_1  on public.cva_dtl_default_config_value (date(created_at);
                    
                    DROP INDEX CONCURRENTLY public.rebuild_brin;
                    
                    
