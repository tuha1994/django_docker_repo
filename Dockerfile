# Sử dụng image Python chính thức
FROM python:3.10

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Cài đặt các dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy toàn bộ code vào container
COPY . .

# Expose port 8000 để chạy Django
EXPOSE 80

# Command để chạy server
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]