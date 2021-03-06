<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_External_Id</fullName>
        <description>Sets External Id to be the concatenation of the Org Id and the Record Id.</description>
        <field>cpqma_ExternalId__c</field>
        <formula>$Organization.Id + &quot;:&quot; + CASESAFEID(Id)</formula>
        <name>Set External Id</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Set External Id</fullName>
        <actions>
            <name>Set_External_Id</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets External Id to be the concatenation of the Org Id and the Record Id.</description>
        <formula>OR( ISBLANK(cpqma_ExternalId__c), AND(ISNEW(),ISCLONE()) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
