define hierarchy zcds_23_log_c346
  as parent child hierarchy (
    source zcds_22_log_c346
    child to parent association _Manager
    start where Manager is initial
    siblings order by Employee
    multiple parents allowed
    orphans ignore
    cycles breakup
    
    cache on 
  )
{
    key Employee,
        Manager,
        Name,
        $node.parent_id as ParentId,
        $node.node_id as NodeId,
        $node.hierarchy_is_cycle as HIsCycle,
        $node.hierarchy_is_orphan as HIsOrphan,
        $node.hierarchy_level as HLevel,
        $node.hierarchy_parent_rank as HParentRank,
        $node.hierarchy_rank as HRank,
        $node.hierarchy_tree_size as HTreeSize
}
