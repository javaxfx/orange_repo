xquery version "1.0";
(:: pragma  parameter="$command" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:DealerRechargePaymentRequest" location="../../../Common/Resources/WSDLs/NGIN/meditelETU.wsdl" ::)

declare namespace ns0 = "http://www.ptinovacao.pt/ws/";
declare namespace xf = "http://tempuri.org/zebra/Ressources/XQueries/ETUClientLocationTransformationRechargeReq/";

declare function xf:ETUClientLocationTransformationRechargeReq($Command as element(*))
    as element(ns0:DealerRechargePaymentRequest) {
        <ns0:DealerRechargePaymentRequest>
            <RequestId>{ concat("ETU_", data($Command/EXTREFNUM)) }</RequestId>
            <RequestOrigin>30</RequestOrigin>
                        	<RequestDate>{fn:current-date()}</RequestDate>
            <RequestType>0</RequestType>
            <RequestOption>
                {
                  if (data($Command/SELECTOR) = "1") then
                        ( xs:integer(0))
                    else 
                        if (data($Command/SELECTOR) = "5") then
                            (xs:integer(1))
                        else 
                            if (data($Command/SELECTOR) = "6") then
                                (xs:integer(2))
                            else 
                                if (data($Command/SELECTOR) = "7") then
                                    (xs:integer(3))
                                else 
                                	if (data($Command/SELECTOR) = "8") then
                                    	(xs:integer(4))
                                	else
                                		if (data($Command/SELECTOR) = "9") then
                                    		(xs:integer(5))
                                		else
                                			if (data($Command/SELECTOR) = "10") then
                                    		(xs:integer(6))
	                                		else
		                                		if (data($Command/SELECTOR) = "11") then
		                                    		(xs:integer(7))
		                                		else
			                                		if (data($Command/SELECTOR) = "12") then
			                                    		(xs:integer(8))
			                                		else
				                                		if (data($Command/SELECTOR) = "13") then
				                                    		(xs:integer(9))
				                                		else
				                                    		()
            	}
			</RequestOption>
            <DealerMSISDN>{ data($Command/MSISDN) }</DealerMSISDN>
            <PIN>{ data($Command/PIN) }</PIN>
            <Amount>{ data($Command/AMOUNT) }</Amount>
            <CustomerMSISDN>{ data($Command/MSISDN2) }</CustomerMSISDN>
        </ns0:DealerRechargePaymentRequest>
};

declare variable $Command as element(*) external;

xf:ETUClientLocationTransformationRechargeReq($Command)