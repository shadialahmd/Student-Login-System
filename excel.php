<?php
include('include/dbcon_export.php');
include('exportExcel_indStudent.php');
?>





<?php

	if (isset($_GET['school_number']))
		$id=$_GET['school_number'];
$SQL= "select tbl_student.school_number,tbl_student.lastname,tbl_student.firstname,check_in.check_in,check_in.check_out,total_rendered from check_in,tbl_student where check_in.school_number = '$id' and tbl_student.school_number = '$id'";

				
	
 
$header = '';
$result ='';
$exportData = mysqli_query($SQL,$conn) or die ( "Sql error : " . mysql_error($conn) );
 
$fields = mysqli_num_fields ( $exportData );
 
for ( $i = 0; $i < $fields; $i++ )
{
    $header .= mysqli_field_name( $exportData , $i ) . "\t";
}
 
while( $row = mysqli_fetch_row( $exportData ) )
{
    $line = '';
    foreach( $row as $value )
    {                                            
        if ( ( !isset( $value ) ) || ( $value == "" ) )
        {
            $value = "\t";
        }
        else
        {
            $value = str_replace( '"' , '""' , $value );
            $value = '"' . $value . '"' . "\t";
        }
        $line .= $value;
    }
    $result .= trim( $line ) . "\n";
}
$result = str_replace( "\r" , "" , $result );
 
if ( $result == "" )
{
    $result = "\nNo Record(s) Found!\n";                        
}
 
header("Content-type: application/octet-stream");
header("Content-Disposition: attachment; filename=export.xls");
header("Pragma: no-cache");
header("Expires: 0");
print "$header\n$result";

 
?>
