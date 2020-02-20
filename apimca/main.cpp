// # Execute apimca main.cpp

#include <iostream>
#include <cpprest/http_client.h>
#include <cpprest/filestream.h>
#include <cpprest/uri.h>
#include <cpprest/json.h>



using namespace utility;
using namespace web;
using namespace web::http;
using namespace web::http::client;
using namespace concurrency::streams;

int main() {
	// cout <<" ===> Mengecheck Seri C++ (dibutuhkan yg C++17) \n \n " ;

// https://stackoverflow.com/questions/5047971/how-do-i-check-for-c11-support
    //   #if __cplusplus==201402L
    //     std::cout << "C++14" << std::endl;
    //     #elif __cplusplus==201103L
    //     std::cout << "C++11" << std::endl;
    //     #else
    //     std::cout << "C++" << std::endl;
    //     #endif


    // Create a file stream to write the received file into it.
	auto fileStream = std::make_shared<ostream>();
    // Open stream to output file.
	pplx::task<void> requestTask = fstream::open_ostream(U("users.json"))
	
	// Make a GET request.
	.then([=](ostream outFile) {
		*fileStream = outFile;

		// Create http_client to send the request.
		http_client client(U("https://reqres.in/"));

		// Build request URI and start the request.
		return client.request(methods::GET, uri_builder(U("api")).append_path(U("users")).to_string());
	})

	// Get the response.
	.then([=](http_response response) {
		// Check the status code.
		if (response.status_code() != 200) {
			throw std::runtime_error("Returned " + std::to_string(response.status_code()));
		}
        else
        {
           std::cout<<"Response 200 !" ;
        }
        

		// Write the response body to file stream.
		response.body().read_to_end(fileStream->streambuf()).wait();

		// Close the file.
		return fileStream->close();
	});


    	// ====================  Make a GET request.
	auto requestJson = http_client(U("https://reqres.in"))
		.request(methods::GET,
			uri_builder(U("api")).append_path(U("users")).append_query(U("id"), 1).to_string())

	// Get the response.
	.then([](http_response response) {
		// Check the status code.
		if (response.status_code() != 200) {
			throw std::runtime_error("Returned " + std::to_string(response.status_code()));
		}

		// Convert the response body to JSON object.
		return response.extract_json();
	})

	// Get the data field.
	.then([](json::value jsonObject) {
		return jsonObject[U("data")];
	})

     // Parse the user details.
	.then([](json::value jsonObject) {
		std::cout << jsonObject[U("first_name")].as_string()
			<< " " << jsonObject[U("last_name")].as_string()
			<< " (" << jsonObject[U("id")].as_integer() << ")"
			<< std::endl;
	});





    // ================= Create user data as JSON object and make POST request.
	auto postJson = pplx::create_task([]() {
		json::value jsonObject1;
		// jsonObject1[U("first_name")] = json::value::string(U("Rian"));
		// jsonObject1[U("last_name")] = json::value::string(U("Hariadi"));
        jsonObject1[U("name")] = json::value::string(U("Rian"));
		 jsonObject1[U("job")] = json::value::string(U("Programmer"));

		return http_client(U("https://reqres.in"))
			.request(methods::POST,
				uri_builder(U("api")).append_path(U("users")).to_string(),
				jsonObject1.serialize(), U("application/json"));
	})

	// Get the response.
	.then([](http_response response) {
		// Check the status code.
		if (response.status_code() != 201) {
			throw std::runtime_error("Returned " + std::to_string(response.status_code()));
            std::cout<<" \n Failed to POST!!! \n" ;
		}

		// Convert the response body to JSON object.
		return response.extract_json();
	})

	// Parse the user details.
	.then([](json::value jsonObject1) {
		std::cout << jsonObject1[U("name")].as_string()
			<< " " << jsonObject1[U("job")].as_string()
			<< " (" << jsonObject1[U("id")].as_string() << ")"
			<< std::endl;
	});




    try {
		while (!requestTask.is_done()) { std::cout << ""; }
        if (requestTask.is_done()){
          std::cout<<"End: Response 200 ! \n" ;
       
        }
 

	} catch (const std::exception &e) {
		printf("Error exception:%s\n", e.what());
	}




	return 0;
}