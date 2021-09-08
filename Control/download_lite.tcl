# source download_lite.tcl

proc upload_float_array {file_name var_name} {
  set ret -1;
  set resp_dict [print -dict "${var_name}"];
  set type [dict get $resp_dict "${var_name}"];
  set ret [scan $type {float[%d]} len];
  if {$ret == 1} {
    set resp_dict [print -dict "&${var_name}"];
    set addr [lindex $resp_dict 1];
    set n_bytes [expr $len*4];
    if {[file exists $file_name]} {
      puts "addr = [format "0x%8.8X" $addr], n_bytes = $n_bytes";
      mwr -size b -bin -file $file_name $addr $n_bytes;
      puts "upload $var_name!!!"; 
      set ret 0;
    }
  }
  return $ret;
}

proc download_float_array {file_name var_name} {
  set ret -1;
  set resp_dict [print -dict "${var_name}"];
  set type [dict get $resp_dict "${var_name}"];
  set ret [scan $type {float[%d]} len];
  if {$ret == 1} {
    set resp_dict [print -dict "&${var_name}"];
    set addr [lindex $resp_dict 1];
    set n_bytes [expr $len*4];

    puts "addr = [format "0x%8.8X" $addr], n_bytes = $n_bytes";
    mrd -size b -bin -file $file_name $addr $n_bytes;
    set ret 0;
  }
  return $ret;
}

proc upload_all { } {
  set script_dir [file dirname [file normalize [info script]]];
  set var_name "dc_ref";
  set file_name [file normalize [file join $script_dir "./logging/duty_cycle.bin"]];
  set ret [upload_float_array $file_name $var_name];
  puts "Uploaded '$var_name' from file $file_name";
}

proc download_all { } {
  set script_dir [file dirname [file normalize [info script]]];
  set var_name "speed_log";
  set file_name [file normalize [file join $script_dir "./logging/speed_log.bin"]];
  set ret [download_float_array $file_name $var_name];
  puts "Downloaded '$var_name' to file $file_name";
}

# Esta utilidad permite inicializar y descargar arrays de floats desde/hacia 
# un fichero. Para ello en primer lugar es preciso cargar este script TCL 
# ejecutando desde la consola XSCT el comando:
#   source download_lite.tcl 
# Los arrays a cargar/descargar deben estar declarados como variables globale.
# Por ejemplo: 
#  #define N_SAMPLES   1700
#  static float dc_ref[N_SAMPLES];
# static float speed_log[N_SAMPLES];
# Para cargar un array se usa el procedimiento upload_float_array que recibe 
# como primer argumento el nombre del fichero y como segundo argumento el
# nombre del array.
# El procedimiento upload_all muestra un ejemplo de su uso. En este caso,
# ejecutando upload_all desde la consola XSCT se inicializa el array dc_ref.
# De forma similar, para volccar un array a un fichero se usa el procedimiento 
# download_float_array que recibe como primer argumento el nombre del fichero 
# y como segundo argumento el nombre del array.
# El procedimiento download_all muestra un ejemplo de su uso. En este caso,
# ejecutando download_all desde la consola XSCT se inicializa descarga e array 
# speed_log.