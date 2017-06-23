<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_External_Id</fullName>
        <description>Sets external Id to be the concatenation of the org and record Ids</description>
        <field>ExternalId__c</field>
        <formula>$Organization.Id + &apos;:&apos; + CASESAFEID(Id)</formula>
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
        <criteriaItems>
            <field>SBQQ__CustomActionCondition__c.ExternalId__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Sets External Id to be the concatenation of the Org Id and the Record Id.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
