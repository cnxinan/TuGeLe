--显示索引
SHOW INDEX FROM [table];
--创建索引
CREATE [UNIQUE] INDEX [indexname] ON table_name(column,,);

--索引分类
    --主键索引 默认建立，要改就要删掉主键
    --单值索引 手动建立，只对一个列
    --唯一索引 手动建立，列的值确保不重复(列重复竟然能建立，不知会有什么后果?)
    --复合索引 一个索引包括多个列，会建多个索引，然后按照seq_in_index 组织。
    --如果对多个字段分别建了单值索引，只会选用其中一个，所以组合索引性价比更高。
    --排序字段 统计或者分组字段适合建索引
    --表记录少 经常删改的字段 where条件用不上的 过滤性不好的(如性别字段) 不建索引

EXPLAIN