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
--find all computer
MATCH (m:Computer) RETURN m
--find all users
MATCH (m:User) RETURN m
--final all active sessions
MATCH p = (c:Computer)-[:HasSession]->(m:User) RETURN p
--search for WMI vulnerable
MATCH (m:User)
WHERE compromised = 'True'

