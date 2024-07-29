<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>429 - 너무 많은 요청</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        .error-template {
            padding: 40px;
            text-align: center;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #dc3545;
            font-size: 72px;
            margin: 0;
        }
        h2 {
            color: #343a40;
            margin-top: 0;
        }
        .error-details {
            color: #6c757d;
            font-size: 18px;
            margin: 20px 0;
        }
        .error-actions {
            margin-top: 30px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin: 0 10px;
        }
        .btn-primary {
            background-color: #007bff;
        }
        .btn-secondary {
            background-color: #6c757d;
        }
        .btn:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
<div class="error-template">
    <h1>429</h1>
    <h2>너무 많은 요청</h2>
    <div class="error-details">
        죄송합니다. 현재 너무 많은 요청이 들어와 일시적으로 접근이 제한되었습니다. 잠시 후 다시 시도해 주세요.
    </div>
    <div class="error-actions">
        <a href="/site/main" class="btn btn-primary">
            홈페이지로 돌아가기
        </a>
    </div>
</div>
</body>
</html>