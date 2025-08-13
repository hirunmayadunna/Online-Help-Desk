<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body>
        <div class="min-h-full">
            <header class="bg-white shadow">
                <div class="mx-auto max-w-7xl w-full flex justify-between px-4 py-6 sm:px-6 lg:px-8">
                    <h1 class="text-3xl font-bold tracking-tight text-gray-900">Create New Ticket</h1>
                    <a class="text-white text-lg bg-sky-500 rounded py-2 px-4" href="GetAllServlet">View All Tickets</a>
                </div>
            </header>
            <main>
                <div style="background: url('https://i.postimg.cc/GtDyZVHk/background.jpg'); background-size: cover; background-position: center;">
                    <div class="h-screen flex justify-center items-center">
                        <div class="bg-white mx-4 p-8 rounded shadow-md w-full md:w-1/2 lg:w-1/3">
                            <form id="ticketform" action="InsertServlet" method="post">
                                <input type="hidden" name="uid" value="1">
                                <div class="mb-4">
                                    <label class="block font-semibold text-gray-700 mb-2" for="name">
                                        Name
                                    </label>
                                    <input
                                        class="border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                        id="name" name="name" type="text" placeholder="Full Name" required>
                                </div>
                                <div class="mb-4">
                                    <label class="block font-semibold text-gray-700 mb-2" for="topic">
                                        Topic
                                    </label>
                                    <select
                                        class="border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                        id="topic" name="topic" required>
                                        <option value="Select a Topic">Select a Topic</option>
                                        <option value="Technical Support">Technical Support</option>
                                        <option value="Course Registration and Enrollment">Course Registration and Enrollment</option>
                                        <option value="Financial Aid and Billing">Financial Aid and Billing</option>
                                        <option value="Medical or Health-Related Reasons">Medical or Health-Related Reasons</option>
                                        <option value="Extracurricular Activities">Extracurricular Activities</option>
                                        <option value="Campus Facilities">Campus Facilities</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label class="block font-semibold text-gray-700 mb-2" for="subject">
                                        Subject
                                    </label>
                                    <input
                                        class="border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                        id="subject" name="subject" type="text" placeholder="Subject" required>
                                </div>
                                <div class="mb-4">
                                    <label class="block font-semibold text-gray-700 mb-2" for="description">
                                        Description
                                    </label>
                                    <textarea
                                        class="border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                                        id="description" name="description" placeholder="Message" required></textarea>
                                </div>
                                <input type="hidden" name="status" value="Open">
                                <div class="mb-6">
                                    <button
                                        class="text-white text-lg bg-sky-500 rounded py-2 px-4"
                                        type="submit">
                                        Submit
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </body>

    </html>