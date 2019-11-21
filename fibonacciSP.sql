drop procedure if exists generate_fibonacci;
DELIMITER //
CREATE PROCEDURE generate_fibonacci
(
    IN start int(11),
    IN number_of_elements int(11)
)
BEGIN
    DECLARE 
	first, second, temp, n, i  int;
    DECLARE output_string varchar(255);
    set first = 1;
    set second = 1;
    set  n = start + number_of_elements;
    set i = 3;
    set output_string = '';
    if start = 1 then
	set output_string = concat(output_string,second,',');
    end if;
    loop_label: loop
	if i > n then
	    leave loop_label;
  	end if;
	set temp = first+second;
	set first = second;
	set second = temp;
        if i > start then 
	    set output_string = concat(output_string,temp,',');
	end if;
	set i = i+1;
	if i <= n then
	    iterate loop_label;
	end if;
    end loop;
    select trim(trailing ',' from output_string) as Output;
END //


DELIMITER ;
