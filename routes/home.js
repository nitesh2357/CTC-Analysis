var ejs = require("ejs");
var mysql = require('./mysql');

exports.getCities = function(req,res){

	var getCitiesSQLQuery = "select * from city;";

	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				console.log("getting data");

				var response = {
						statusCode  : 200,
						statusObject : results,
						statusMessage : "Valid Data"
				};
				
				res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getCitiesSQLQuery);
};

exports.getJobtypes = function(req,res){

	var getJobtypesSQLQuery = "select * from job_types;";

	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				console.log("getting data");

				var response = {
						statusCode  : 200,
						statusObject : results,
						statusMessage : "Valid Data"
				};
				
				res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getJobtypesSQLQuery);
};

exports.getSubJobtypes = function(req,res){

	var job_type_fk = req.param("job_type_id");
	var getSubJobtypesSQLQuery = "select * from sub_jobtype where job_type_fk="+job_type_fk;

	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				console.log("getting data");

				var response = {
						statusCode  : 200,
						statusObject : results,
						statusMessage : "Valid Data"
				};
				
				res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getSubJobtypesSQLQuery);
};

exports.getDataBasedOnLocation = function(req,res){

	var location_id = req.param("location_id");
	var getDataBasedOnLocationSQLQuery = "select * from data d,job_types j,sub_jobtype s, city c where  location_id="+location_id;

	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				console.log("getting data");

				var response = {
						statusCode  : 200,
						statusObject : results,
						statusMessage : "Valid Data"
				};
				
				res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getDataBasedOnLocationSQLQuery);
};

exports.getAllData = function(req,res){

	var current_location_id = req.param("location_id");
	//console.log()
	var getAllData = "select * from data d,city c,job_types j,sub_jobtype s " +
			"where c.city_id=d.location_id and d.sub_jobtype_id=s.sub_jobtype_id and d.job_type_id=j.job_id";

	var data_id =[], job_type_id=[], location_id=[], sub_jobtype_id=[],
	base_salary=[],social_securtiy=[], bonuses=[], healthcare=[], pension=[], total=[], city_name=[], job_name=[], subjob_name=[];
	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				for(var i=0; i < results.length;i++)
					{
					data_id.push(results[i].data_id);
					job_type_id.push(results[i].job_type_id);
					location_id.push(results[i].location_id);
					sub_jobtype_id.push(results[i].sub_jobtype_id);
					base_salary.push(results[i].Base_Salary);
					social_securtiy.push(results[i].Social_Security);
					bonuses.push(results[i].Bonuses);
					healthcare.push(results[i].Healthcare);
					pension.push(results[i].Pension);
					total.push(results[i].Total_of_All);
					city_name.push(results[i].city_name);
					job_name.push(results[i].job_name);
					subjob_name.push(results[i].sub_jobtype);
					}
				console.log("getting data");

				var response = {
						"data_id":data_id,
						"job_type_id":job_type_id,
						"location_id":location_id,
						"sub_jobtype_id":sub_jobtype_id,
						"base_salary":base_salary,
						"social_security":social_securtiy,
						"bonuses":bonuses,
						"healthcare":healthcare,
						"pension":pension,
						"total":total,
						"city_name":city_name,
						"job_name":job_name,
						"subjob_name":subjob_name,
						"current_location_id":current_location_id
				};
				
				var newArray = {
						object : response
				};
				
				res.render("locationwise",newArray);
				//res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getAllData);
};

exports.getAllDataJobTypeWise = function(req,res){

	var job_type_id_current = req.param("job_type_id");
	var getAllData = "select * from data d,city c,job_types j,sub_jobtype s " +
			"where c.city_id=d.location_id and d.sub_jobtype_id=s.sub_jobtype_id and d.job_type_id=j.job_id";

	var data_id =[], job_type_id=[], location_id=[], sub_jobtype_id=[],
	base_salary=[],social_securtiy=[], bonuses=[], healthcare=[], pension=[], total=[], city_name=[], job_name=[], subjob_name=[];
	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				for(var i=0; i < results.length;i++)
					{
					data_id.push(results[i].data_id);
					job_type_id.push(results[i].job_type_id);
					location_id.push(results[i].location_id);
					sub_jobtype_id.push(results[i].sub_jobtype_id);
					base_salary.push(results[i].Base_Salary);
					social_securtiy.push(results[i].Social_Security);
					bonuses.push(results[i].Bonuses);
					healthcare.push(results[i].Healthcare);
					pension.push(results[i].Pension);
					total.push(results[i].Total_of_All);
					city_name.push(results[i].city_name);
					job_name.push(results[i].job_name);
					subjob_name.push(results[i].sub_jobtype);
					}
				console.log("getting data");

				var response = {
						"data_id":data_id,
						"job_type_id":job_type_id,
						"location_id":location_id,
						"sub_jobtype_id":sub_jobtype_id,
						"base_salary":base_salary,
						"social_security":social_securtiy,
						"bonuses":bonuses,
						"healthcare":healthcare,
						"pension":pension,
						"total":total,
						"city_name":city_name,
						"job_name":job_name,
						"subjob_name":subjob_name,
						"job_type_id_current":job_type_id_current
				};
				
				var newArray = {
						object : response
				};
				
				res.render("job_type_wise",newArray);
				//res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getAllData);
};


exports.getDataBasedOnLocationAndJobType = function(req,res){

	var location_id = req.param("location_id");
	var job_type_id = req.param("job_type_id");
	var getDataBasedOnLocationAndJobTypeSQLQuery = "select * from data d,city c,job_types j,sub_jobtype s where " +
			"c.city_id=d.location_id and d.sub_jobtype_id=s.sub_jobtype_id " +
			"and d.job_type_id=j.job_id and location_id="+location_id+" and job_type_id="+job_type_id+";";

	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				console.log("getting data");

				var response = {
						statusCode  : 200,
						statusObject : results,
						statusMessage : "Valid Data"
				};
				
				res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getDataBasedOnLocationAndJobTypeSQLQuery);
};

exports.getDataBasedOnLocationAndSubJobType = function(req,res){

	var location_id = req.param("location_id");
	var sub_jobtype_id = req.param("sub_jobtype_id");
	var getDataBasedOnLocationAndSubJobTypeSQLQuery = "select * from data d,city c," +
			"job_types j,sub_jobtype s where c.city_id=d.location_id and " +
			" d.sub_jobtype_id=s.sub_jobtype_id and d.job_type_id=j.job_id and location_id="+location_id+" and d.sub_jobtype_id="+sub_jobtype_id+";";

	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				console.log("getting data");

				var response = {
						statusCode  : 200,
						statusObject : results,
						statusMessage : "Valid Data"
				};
				
				res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getDataBasedOnLocationAndSubJobTypeSQLQuery);
};

exports.getDataBasedOnSubJobType = function(req,res){

	var sub_jobtype_id = req.param("sub_jobtype_id");
	var getDataBasedOnSubJobTypeSQLQuery = "select * from data d,city c,job_types j,sub_jobtype s" +
			" where c.city_id=d.location_id and d.sub_jobtype_id=s.sub_jobtype_id and d.job_type_id=j.job_id " +
			"and d.sub_jobtype_id="+sub_jobtype_id;

	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				console.log("getting data");

				var response = {
						statusCode  : 200,
						statusObject : results,
						statusMessage : "Valid Data"
				};
				
				res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getDataBasedOnSubJobTypeSQLQuery);
};

exports.getDataBasedOnJobType = function(req,res){

	var job_type_id = req.param("job_type_id");
	var getDataBasedOnJobTypeSQLQuery = "select * from data d,city c,job_types j,sub_jobtype s" +
	" where c.city_id=d.location_id and d.sub_jobtype_id=s.sub_jobtype_id and d.job_type_id=j.job_id " +
	"and d.job_type_id="+job_type_id;

	mysql.fetchData(function(err, results)
			{
		if (err) 
		{
			throw err;
		} 
		else
		{
			if (results.length > 0) 
			{
				console.log("getting data");

				var response = {
						statusCode  : 200,
						statusObject : results,
						statusMessage : "Valid Data"
				};
				
				res.send(response);
			}
			else
			{
				console.log("InValid Data");

				var responseError = {
						statusCode  : 202,
						statusObject : results,
						statusMessage : "InValid Data"
				};
				
				res.send(responseError);
			}
		}
			}, getDataBasedOnJobTypeSQLQuery);
};