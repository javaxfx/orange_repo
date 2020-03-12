xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/message";
(:: import schema at "../../YAMLs/PublicKey/api.wsdl" ::)
declare namespace ns2="http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/model/rest";
(:: import schema at "../../nXSDs/PublicKey/api_YAML.xsd" ::)

declare namespace mod = "http://orange.com/OrangeMaroc_APIs/api/publicKey/v0/model";

declare variable $Resp as element() (:: schema-element(ns1:publicKeyFindResponse) ::) external;

declare function local:func($Resp as element() (:: schema-element(ns1:publicKeyFindResponse) ::)) as element() (:: schema-element(ns2:PublicKeyArray) ::) {
    <ns2:PublicKeyArray>
        {
            if ($Resp/publicKey) then
                
                for $publicKey in $Resp/publicKey
                return 
                <ns2:PublicKey>
                    {
                        if ($publicKey/mod:id)
                        then <mod:id>{fn:data($publicKey/mod:id)}</mod:id>
                        else ()
                    }
                    {
                        if ($publicKey/mod:href)
                        then <mod:href>{fn:data($publicKey/mod:href)}</mod:href>
                        else ()
                    }
                    {
                        if ($publicKey/mod:name)
                        then <mod:name>{fn:data($publicKey/mod:name)}</mod:name>
                        else ()
                    }
                    {
                        if ($publicKey/mod:description)
                        then <mod:description>{fn:data($publicKey/mod:description)}</mod:description>
                        else ()
                    }
                    {
                        if ($publicKey/mod:lifecycleState)
                        then <mod:lifecycleState>{fn:data($publicKey/mod:lifecycleState)}</mod:lifecycleState>
                        else ()
                    }
                    {
                        if ($publicKey/mod:validFor)
                        then 
                            <mod:validFor>
                                {
                                    if ($publicKey/mod:validFor/mod:startDateTime)
                                    then <mod:startDateTime>{fn:data($publicKey/mod:validFor/mod:startDateTime)}</mod:startDateTime>
                                    else ()
                                }
                                {
                                    if ($publicKey/mod:validFor/mod:endDateTime)
                                    then <mod:endDateTime>{fn:data($publicKey/mod:validFor/mod:endDateTime)}</mod:endDateTime>
                                    else ()
                                }
                            </mod:validFor>
                        else ()
                    }
                    {
                        if ($publicKey/mod:category)
                        then <mod:category>{fn:data($publicKey/mod:category)}</mod:category>
                        else ()
                    }
                    {
                        if ($publicKey/mod:publicKeyPool)
                        then 
                            <mod:publicKeyPool>
                                {
                                    if ($publicKey/mod:publicKeyPool/mod:name)
                                    then <mod:name>{fn:data($publicKey/mod:publicKeyPool/mod:name)}</mod:name>
                                    else ()
                                }
                                {
                                    if ($publicKey/mod:publicKeyPool/mod:relatedParty)
                                    then 
                                        <mod:relatedParty>
                                            {
                                                if ($publicKey/mod:publicKeyPool/mod:relatedParty/mod:id)
                                                then <mod:id>{fn:data($publicKey/mod:publicKeyPool/mod:relatedParty/mod:id)}</mod:id>
                                                else ()
                                            }
                                            {
                                                for $identification in $publicKey/mod:publicKeyPool/mod:relatedParty/mod:identification
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
                                                if ($publicKey/mod:publicKeyPool/mod:relatedParty/mod:href)
                                                then <mod:href>{fn:data($publicKey/mod:publicKeyPool/mod:relatedParty/mod:href)}</mod:href>
                                                else ()
                                            }
                                            {
                                                if ($publicKey/mod:publicKeyPool/mod:relatedParty/mod:name)
                                                then <mod:name>{fn:data($publicKey/mod:publicKeyPool/mod:relatedParty/mod:name)}</mod:name>
                                                else ()
                                            }
                                            {
                                                if ($publicKey/mod:publicKeyPool/mod:relatedParty/mod:role)
                                                then <mod:role>{fn:data($publicKey/mod:publicKeyPool/mod:relatedParty/mod:role)}</mod:role>
                                                else ()
                                            }
                                        </mod:relatedParty>
                                    else ()
                                }
                            </mod:publicKeyPool>
                        else ()
                    }
                    {
                        for $relatedParty in $publicKey/mod:relatedParty
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
                        if ($publicKey/mod:basket)
                        then 
                            <mod:basket>
                                {
                                    if ($publicKey/mod:basket/mod:id)
                                    then <mod:id>{fn:data($publicKey/mod:basket/mod:id)}</mod:id>
                                    else ()
                                }
                            </mod:basket>
                        else ()
                    }
                    {
                        if ($publicKey/mod:defaultChannel)
                        then <mod:defaultChannel>{fn:data($publicKey/mod:defaultChannel)}</mod:defaultChannel>
                        else ()
                    }
                </ns2:PublicKey>
            else
                <ns2:PublicKey>
                    <mod:id></mod:id>
                    <mod:href></mod:href>
                    <mod:name></mod:name>
                    <mod:description></mod:description>
                    <mod:lifecycleState></mod:lifecycleState>
                    <mod:validFor>
                        <mod:startDateTime></mod:startDateTime>
                        <mod:endDateTime></mod:endDateTime>
                    </mod:validFor>
                    <mod:category></mod:category>
                    <mod:publicKeyPool>
                        <mod:name></mod:name>
                        <mod:relatedParty>
                            <mod:id></mod:id>
                            <mod:identification>
                                <mod:type></mod:type>
                                <mod:identificationId></mod:identificationId>
                                <mod:issuingDate></mod:issuingDate>
                            </mod:identification>
                            <mod:href></mod:href>
                            <mod:name></mod:name>
                            <mod:role></mod:role>
                        </mod:relatedParty>
                    </mod:publicKeyPool>
                    <mod:relatedParty>
                        <mod:id></mod:id>
                        <mod:identification>
                            <mod:type></mod:type>
                            <mod:identificationId></mod:identificationId>
                            <mod:issuingDate></mod:issuingDate>
                        </mod:identification>
                        <mod:href></mod:href>
                        <mod:name></mod:name>
                        <mod:role></mod:role>
                    </mod:relatedParty>
                    <mod:basket>
                        <mod:id></mod:id>
                    </mod:basket>
                    <mod:defaultChannel></mod:defaultChannel>
                </ns2:PublicKey>
        }
    </ns2:PublicKeyArray>
};

local:func($Resp)