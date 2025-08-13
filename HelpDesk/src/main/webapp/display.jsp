<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <h1 class="text-3xl font-bold tracking-tight text-gray-900">Admin Dashboard</h1>
                        <a class="text-white text-lg bg-sky-500 rounded py-2 px-4" href="insert.jsp">Add a Ticket</a>
                    </div>
                </header>
                <main>
                    <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
                        <!-- Your content -->

                        <table class="border-collapse border border-slate-500 w-full">
                            <tr>
                                <th class="border border-slate-500 bg-slate-100 p-3 text-center">Ticket ID</th>
                                <th class="border border-slate-500 bg-slate-100 p-3 text-center">Name</th>
                                <th class="border border-slate-500 bg-slate-100 p-3 text-center">Topic</th>
                                <th class="border border-slate-500 bg-slate-100 p-3 text-center">Subject</th>
                                <th class="border border-slate-500 bg-slate-100 p-3 text-center">Description</th>
                                <th class="border border-slate-500 bg-slate-100 p-3 text-center">Status</th>
                                <th class="border border-slate-500 bg-slate-100 p-3 text-center">Actions</th>
                            </tr>
                            <c:forEach var="ticket" items="${allTickets}">
                                <tr>
                                    <td class="border border-slate-500 p-3 text-center">${ticket.tid}</td>
                                    <td class="border border-slate-500 p-3 text-center">${ticket.name}</td>
                                    <td class="border border-slate-500 p-3 text-center">${ticket.topic}</td>
                                    <td class="border border-slate-500 p-3 text-center">${ticket.subject}</td>
                                    <td class="border border-slate-500 p-3 text-center">
                                        <form id="updateForm${ticket.tid}" action="UpdateServlet" method="post">
                                            <input type="text" name="description" class="border border-slate-500 p-1" value="${ticket.description}">
                                            <input type="hidden" name="tid" value="${ticket.tid}">
                                        </form>
                                        <script>
                                            function submitUpdateForm(tid) {
                                                document.getElementById('updateForm' + tid).submit();
                                            }
                                        </script>
                                    </td>
                                    <td class="border border-slate-500 p-3 text-center">
                                        <span class="border border-dashed rounded-full border-emerald-500 bg-emerald-50 rounded py-1 px-2">${ticket.status}</span>
                                    </td>
                                    <td class="border border-slate-500 p-3 text-center">
                                        <button class="text-white bg-green-500 rounded py-2 px-4 mr-2" onclick="submitUpdateForm(${ticket.tid})">Update</button>
                                        <button class="text-white bg-red-500 rounded py-2 px-4" onclick="window.location.href='DeleteServlet?tid=${ticket.tid}'">Delete</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </main>
            </div>
        </body>

        </html>