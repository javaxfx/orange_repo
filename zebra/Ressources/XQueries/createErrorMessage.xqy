xquery version "1.0";
(:: pragma bea:schema-type-return type="ns0:Exception" location="../Schemas/xsd2.xsd" ::)

declare namespace ns0 = "http://medipps/EPaymentWS/ETUClientLocation";
declare namespace xf = "http://tempuri.org/zebra/Ressources/XQueries/createErrorMessage/";

declare function xf:createErrorMessage($code as xs:string,
    $detail as xs:string)
    as element() {
        <ns0:Exception>
            <message>{ concat($code , $detail) }</message>
        </ns0:Exception>
};

declare variable $code as xs:string external;
declare variable $detail as xs:string external;

xf:createErrorMessage($code,
    $detail)