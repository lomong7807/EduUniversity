<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7 ]><html lang="ko" class="ie6"><![endif]-->
<!--[if IE 7 ]>   <html lang="ko" class="ie7"><![endif]-->
<!--[if IE 8 ]>   <html lang="ko" class="ie8"><![endif]-->
<!--[if IE 9 ]>   <html lang="ko" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="ko" class="">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>401 - 인증이 필요합니다</title>
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
            color: #ffc107;
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
        <h1>401</h1>
        <h2>인증이 필요합니다</h2>
        <div class="error-details">
            죄송합니다. 이 페이지에 접근하려면 로그인이 필요합니다.
        </div>
        <div class="error-actions">
            <a href="/site/login" class="btn btn-primary">
                로그인
            </a>
            <a href="/site/main" class="btn btn-secondary">
                홈페이지로 돌아가기
            </a>
            <a href="#" onclick="history.back(); return false;" class="btn btn-secondary">
                이전 페이지로 돌아가기
            </a>
        </div>
    </div>
</body>
</html>