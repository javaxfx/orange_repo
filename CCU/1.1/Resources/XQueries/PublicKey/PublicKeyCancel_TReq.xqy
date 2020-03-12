xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/message";
(:: import schema at "../../../../Resources/YAMLs/PublicKey/api.wsdl" ::)
declare namespace ns1="http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/model/rest";
(:: import schema at "../../../../Resources/nXSDs/PublicKey/api_YAML.xsd" ::)

declare namespace mod = "http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/model";

declare variable $req as element() (:: schema-element(ns1:cancelConstraints) ::) external;

declare function local:func($req as element() (:: schema-element(ns1:cancelConstraints) ::)) as element() (:: schema-element(ns2:publicKeyCancel) ::) {
    <ns2:publicKeyCancel>
        <cancelConstraints>
            <mod:id>{fn:data($req/mod:id)}</mod:id>
            <mod:basket>
                {
                    if ($req/mod:basket/mod:id)
                    then <mod:id>{fn:data($req/mod:basket/mod:id)}</mod:id>
                    else ()
                }
            </mod:basket>
            <mod:defaultChannel>{fn:data($req/mod:defaultChannel)}</mod:defaultChannel>
        </cancelConstraints>
    </ns2:publicKeyCancel>
        
};

local:func($req)