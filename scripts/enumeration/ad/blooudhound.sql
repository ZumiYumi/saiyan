--find all members of a group
MATCH (u:User)-[:MemberOf]->(g:Group)
WHERE g.name = 'MANAGEMENT DEPARTMENT@CORP.COM'
RETURN u
--find a user owns a group, didn't seem to work
MATCH (u:User)-[:Owns]->(g:Group)
WHERE g.name = 'MANAGEMENT DEPARTMENT@CORP.COM'
RETURN u
--find all groups
MATCH (g:Group)
RETURN g
--find what group owns a group
MATCH (owningGroup:Group)-[:Owns]->(ownedGroup:Group)
WHERE ownedGroup.name = 'MANAGEMENT DEPARTMENT@CORP.COM'
RETURN owningGroup
