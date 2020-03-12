xquery version "1.0";
(:: pragma bea:global-element-return element="ns1:etuClientLocalReqDTO" location="../Schemas/ETUClientLocation2.xsd" ::)

declare namespace ns1 = "http://medipps/EPaymentWS/ETUClientLocation";
declare namespace ns0 = "java:com.edinfor.pps.dto";
declare namespace xf = "http://tempuri.org/zebra/Ressources/XQueries/transformationETUReq_v2/";

declare function xf:transformationETUReq_v2($msisdn as xs:string)
    as element(ns1:etuClientLocalReqDTO) {
        <ns1:etuClientLocalReqDTO>
            <ns0:msisdn>{ $msisdn }</ns0:msisdn>
        </ns1:etuClientLocalReqDTO>
};

declare variable $msisdn as xs:string external;

xf:transformationETUReq_v2($msisdn)