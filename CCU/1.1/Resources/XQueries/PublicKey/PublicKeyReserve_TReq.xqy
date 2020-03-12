xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/message";
(:: import schema at "../../../../Resources/YAMLs/PublicKey/api.wsdl" ::)
declare namespace ns1="http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/model/rest";
(:: import schema at "../../../../Resources/nXSDs/PublicKey/api_YAML.xsd" ::)

declare namespace mod = "http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/model";

declare variable $req as element() (:: schema-element(ns1:reserveConstraints) ::) external;

declare function local:func($req as element() (:: schema-element(ns1:reserveConstraints) ::)) as element() (:: schema-element(ns2:publicKeyReserve) ::) {
    <ns2:publicKeyReserve>
        <reserveConstraints>
            {
                if ($req/mod:wishedPublicKey)
                then 
                    <mod:wishedPublicKey>
                        {
                            if ($req/mod:wishedPublicKey/mod:id)
                            then <mod:id>{fn:data($req/mod:wishedPublicKey/mod:id)}</mod:id>
                            else ()
                        }
                        {
                            if ($req/mod:wishedPublicKey/mod:name)
                            then <mod:name>{fn:data($req/mod:wishedPublicKey/mod:name)}</mod:name>
                            else ()
                        }
                    </mod:wishedPublicKey>
                else ()
            }
            {
                if ($req/mod:quantity)
                then <mod:quantity>{fn:data($req/mod:quantity)}</mod:quantity>
                else ()
            }
            {
                if ($req/mod:isSequential)
                then <mod:isSequential>{fn:data($req/mod:isSequential)}</mod:isSequential>
                else ()
            }
            {
                if ($req/mod:category)
                then <mod:category>{fn:data($req/mod:category)}</mod:category>
                else ()
            }
            {
                if ($req/mod:publicKeyPool)
                then 
                    <mod:publicKeyPool>
                        {
                            if ($req/mod:publicKeyPool/mod:name)
                            then <mod:name>{fn:data($req/mod:publicKeyPool/mod:name)}</mod:name>
                            else ()
                        }
                        {
                            if ($req/mod:publicKeyPool/mod:relatedParty)
                            then 
                                <mod:relatedParty>
                                    {
                                        if ($req/mod:publicKeyPool/mod:relatedParty/mod:id)
                                        then <mod:id>{fn:data($req/mod:publicKeyPool/mod:relatedParty/mod:id)}</mod:id>
                                        else ()
                                    }
                                    {
                                        for $identification in $req/mod:publicKeyPool/mod:relatedParty/mod:identification
                                        return 
                                        <mod:identification>
                                            {
                                                if ($identification/mod:type)
                                                then <mod:type>{fn:data($identification/mod:type)}</mod:type>
                                                else ()
                                            }
                                            {
                                                if ($identification/mod:identificationId)
                                                then <mod:identificationId>{fn:data($identification/mod:identificationId)}</mod:identificationId>
                                                else ()
                                            }
                                            {
                                                if ($identification/mod:issuingDate)
                                                then <mod:issuingDate>{fn:data($identification/mod:issuingDate)}</mod:issuingDate>
                                                else ()
                                            }
                                        </mod:identification>
                                    }
                                    {
                                        if ($req/mod:publicKeyPool/mod:relatedParty/mod:href)
                                        then <mod:href>{fn:data($req/mod:publicKeyPool/mod:relatedParty/mod:href)}</mod:href>
                                        else ()
                                    }
                                    {
                                        if ($req/mod:publicKeyPool/mod:relatedParty/mod:name)
                                        then <mod:name>{fn:data($req/mod:publicKeyPool/mod:relatedParty/mod:name)}</mod:name>
                                        else ()
                                    }
                                    {
                                        if ($req/mod:publicKeyPool/mod:relatedParty/mod:role)
                                        then <mod:role>{fn:data($req/mod:publicKeyPool/mod:relatedParty/mod:role)}</mod:role>
                                        else ()
                                    }
                                </mod:relatedParty>
                            else ()
                        }
                    </mod:publicKeyPool>
                else ()
            }
            {
                if ($req/mod:currentPublicKey)
                then 
                    <mod:currentPublicKey>
                        {
                            if ($req/mod:currentPublicKey/mod:id)
                            then <mod:id>{fn:data($req/mod:currentPublicKey/mod:id)}</mod:id>
                            else ()
                        }
                    </mod:currentPublicKey>
                else ()
            }
            {
                for $relatedParty in $req/mod:relatedParty
                return 
                <mod:relatedParty>
                    {
                        if ($relatedParty/mod:id)
                        then <mod:id>{fn:data($relatedParty/mod:id)}</mod:id>
                        else ()
                    }
                    {
                        for $identification in $relatedParty/mod:identification
                        return 
                        <mod:identification>
                            {
                                if ($identification/mod:type)
                                then <mod:type>{fn:data($identification/mod:type)}</mod:type>
                                else ()
                            }
                            {
                                if ($identification/mod:identificationId)
                                then <mod:identificationId>{fn:data($identification/mod:identificationId)}</mod:identificationId>
                                else ()
                            }
                            {
                                if ($identification/mod:issuingDate)
                                then <mod:issuingDate>{fn:data($identification/mod:issuingDate)}</mod:issuingDate>
                                else ()
                            }
                        </mod:identification>
                    }
                    {
                        if ($relatedParty/mod:href)
                        then <mod:href>{fn:data($relatedParty/mod:href)}</mod:href>
                        else ()
                    }
                    {
                        if ($relatedParty/mod:name)
                        then <mod:name>{fn:data($relatedParty/mod:name)}</mod:name>
                        else ()
                    }
                    {
                        if ($relatedParty/mod:role)
                        then <mod:role>{fn:data($relatedParty/mod:role)}</mod:role>
                        else ()
                    }
                </mod:relatedParty>
            }
            {
                if ($req/mod:address)
                then 
                    <mod:address>
                        {
                            if ($req/mod:address/mod:id)
                            then <mod:id>{fn:data($req/mod:address/mod:id)}</mod:id>
                            else ()
                        }
                    </mod:address>
                else ()
            }
            {
                if ($req/mod:basket)
                then 
                    <mod:basket>
                        {
                            if ($req/mod:basket/mod:id)
                            then <mod:id>{fn:data($req/mod:basket/mod:id)}</mod:id>
                            else ()
                        }
                    </mod:basket>
                else ()
            }
            {
                if ($req/mod:defaultChannel)
                then <mod:defaultChannel>{fn:data($req/mod:defaultChannel)}</mod:defaultChannel>
                else ()
            }
        </reserveConstraints>
    </ns2:publicKeyReserve>
        
};

local:func($req)