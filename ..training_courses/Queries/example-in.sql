select 
	*
from 
	jeuvideo j 
inner join
	(select id from "type") typeamoi on typeamoi.id = j.type_id