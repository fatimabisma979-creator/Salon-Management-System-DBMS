SELECT Customer.Cname, Employee.Ename, Service.Sname, Service.Price AS Amount, Appointment.AppointmentDate, Appointment.AppointmentTime
FROM ((Customer INNER JOIN Appointment ON Customer.CustomerID = Appointment.CustomerID) INNER JOIN Employee ON Appointment.EmployeeID = Employee.EmployeeID) INNER JOIN Service ON Appointment.ServiceID = Service.ServiceID
WHERE Appointment.AppointmentID = 1;