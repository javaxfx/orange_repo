xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/message";
(:: import schema at "../../YAMLs/PublicKey/api.wsdl" ::)

declare variable $name as xs:string external;
declare variable $category as xs:string external;
declare variable $lifecycleState as xs:string external;
declare variable $affix as xs:string external;
declare variable $publicKeyPool.name as xs:string external;
declare variable $limit as xs:string external;

declare function local:func($name as xs:string, $category as xs:string, $lifecycleState as xs:string, 
                            $affix as xs:string, $publicKeyPool.name as xs:string, $limit as xs:string) 
                            as element() (:: schema-element(ns1:publicKeyFind) ::) {
    <ns1:publicKeyFind>
        {
            if (true()) then
                <name>{fn:data($name)}</name>
            else
                <name></name>
        }
        {
            if (true()) then
                <category>{fn:data($category)}</category>
            else
                <category></category>
        }
        {
            if (true()) then
                <lifecycleState>{fn:data($lifecycleState)}</lifecycleState>
            else
                <lifecycleState></lifecycleState>
        }
        {
            if (true()) then
                <affix>{fn:data($affix)}</affix>
            else
                <affix></affix>
        }
        {
            if (true()) then
                <publicKeyPool.name>{fn:data($publicKeyPool.name)}</publicKeyPool.name>
            else
                <publicKeyPool.name></publicKeyPool.name>
        }
        {
            if (true()) then
                <limit>{fn:data($limit)}</limit>
            else
                <limit></limit>
        }
    </ns1:publicKeyFind>
};

local:func($name, $category, $lifecycleState, $affix, $publicKeyPool.name, $limit)