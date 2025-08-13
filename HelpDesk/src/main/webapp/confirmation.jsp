<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Confirmation</title>
		<script src="https://cdn.tailwindcss.com"></script>
	</head>

	<body>
		<div class="min-h-full">
			<header class="bg-white shadow">
				<div class="mx-auto max-w-7xl w-full flex justify-between px-4 py-6 sm:px-6 lg:px-8">
					<h1 class="text-3xl font-bold tracking-tight text-gray-900">Form Confirmation</h1>
				</div>
			</header>
			<main>
				<div
					style="background: url('https://i.postimg.cc/GtDyZVHk/background.jpg'); background-size: cover; background-position: center;">
					<div class="h-screen flex justify-center items-center">
						<div class="bg-white mx-4 p-8 rounded shadow-md w-full md:w-1/2 lg:w-1/3">
							<h1 class="mb-4">Here are the entered details:</h1>
							<div class="mb-4">
								<label class="block font-semibold text-gray-700 mb-2">Name</label>
								<p
									class="border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">${name}</p>
							</div>
							<div class="mb-4">
								<label class="block font-semibold text-gray-700 mb-2">Topic</label>
								<p
									class="border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">${topic}</p>
							</div>
							<div class="mb-4">
								<label class="block font-semibold text-gray-700 mb-2">Subject</label>
								<p
									class="border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">${subject}</p>
							</div>
							<div class="mb-4">
								<label class="block font-semibold text-gray-700 mb-2">Description</label>
								<p
									class="border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">${description}</p>
							</div>
							<button class="text-white bg-green-500 rounded py-2 px-4"
								onclick="window.location.href='/HelpDesk/GetAllServlet'">Go to Ticket Center</button>
						</div>
					</div>
				</div>
			</main>
		</div>
	</body>

	</html>