<%--
  Created by IntelliJ IDEA.
  User: rkddb
  Date: 2024-07-12
  Time: 오전 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <div class="col-lg-3 col-sm-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h4>
                    <strong class="text-info"><i
                            class="mr5 ti-id-badge"></i> 회원 가입수</strong>
                </h4>
                <span class="pull-right clickable"><i
                        class="ti-arrow-circle-up"></i></span>
            </div>
            <div class="panel-body">
                <table class="table table-flat">
                    <colgroup>
                        <col style="width: 50%;">
                        <col style="width: 50%;">
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col" class="text-left">구분</th>
                        <th scope="col" class="text-right">가입자 수</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- Loop -->
                    <tr>
                        <td>오늘</td>
                        <td class="text-right num-webfont">2384</td>
                    </tr>
                    <!-- //Loop -->

                    <!-- Loop -->
                    <tr>
                        <td>어제</td>
                        <td class="text-right num-webfont">1678</td>
                    </tr>
                    <!-- //Loop -->

                    <!-- Loop -->
                    <tr>
                        <td>7일</td>
                        <td class="text-right num-webfont">1219</td>
                    </tr>
                    <!-- //Loop -->

                    <!-- Loop -->
                    <tr>
                        <td>1개월</td>
                        <td class="text-right num-webfont">425</td>
                    </tr>
                    <!-- //Loop -->

                    <!-- Loop -->
                    <tr>
                        <td>6개월</td>
                        <td class="text-right num-webfont">308</td>
                    </tr>
                    <!-- //Loop -->
                    </tbody>
                    <tfoot>
                    <tr>
                        <td>전체</td>
                        <td class="text-right num-webfont">6318</td>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</html>
