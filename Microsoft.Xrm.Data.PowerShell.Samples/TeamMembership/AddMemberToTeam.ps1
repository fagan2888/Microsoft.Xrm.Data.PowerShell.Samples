Import-Module Microsoft.Xrm.Data.Powershell

#ID of the team list you want to add members (or a single member) to 
$TeamId = "107E563B-7D21-40A5-AF6B-C8975E9C3860"

$teamMembers = @(); 
$teamMembers += @("C69F9B23-F3B2-403F-A1CF-C81FEF71126F")
$teamMembers += @("E563BB21-E3E4-A1CF-40A5-C8975E9C3860" )

$AddMember = new-object Microsoft.Crm.Sdk.Messages.AddMembersTeamRequest
$AddMember.TeamId = $TeamId
$AddMember.MemberIds = $teamMembers 

$conn.ExecuteCrmOrganizationRequest($AddMember)
