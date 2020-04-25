function(){
	
	var env = karate.env; // get java system property 'karate.env'
	  karate.log('karate.env system property was:', env);
//	  if (!env) {
//	    env = 'dev'; // a custom 'intelligent' default
//	  }
	  var config = { // base config JSON
	    appId: 'Test ID',
	    appSecret: 'Test Secret',
	    someUrlBase: 'https://reqres.in/api/users',
	    anotherUrlBase: 'https://another-host.com/v1/'
	  };
	
	karate.configure('connectTimeout', 60000);
    karate.configure('readTimeout', 60000);

    return config;
	
}