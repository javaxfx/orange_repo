xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare variable $anyType as element() external;

declare function local:func($anyType as element()) as xs:string {
    fn:concat('<?xml version="1.0"?>','<COMMAND>',local:myXqueriInner($anyType, 1),'</COMMAND>')
};

declare function local:myXqueriInner($anyType as element(), $position as xs:integer) {
        
        if($position > count($anyType/*)) then ''
        else(concat('<',fn:local-name($anyType/*[position() = $position]),'>',local:myXqueriInnerNested($anyType, $position),'</',fn:local-name($anyType/*[position() = $position]),'>', local:myXqueriInner($anyType, $position+1)))
};

declare function local:myXqueriInnerNested($anyType as element(), $position as xs:integer) {
        
        if(1 > count($anyType/*[position() = $position]/*)) then (data($anyType/*[position() = $position]))
        else (local:myXqueriInner($anyType/*[$position], 1))
};

local:func($anyType)