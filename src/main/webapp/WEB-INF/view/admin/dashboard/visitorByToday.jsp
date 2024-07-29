<%--
  Created by IntelliJ IDEA.
  User: rkddb
  Date: 2024-07-12
  Time: 오전 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <div class="col-lg-4 col-md-12">
        <div class="row">
            <!-- 금일 접속한 총 방문수 -->
            <div class="col-lg-12 col-sm-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h4>
                            <strong class="text-info"><i
                                    class="mr5 ti-pie-chart"></i> 금일 접속한 총 방문수</strong>
                        </h4>
                        <span class="pull-right clickable"><i
                                class="ti-arrow-circle-up"></i></span>
                    </div>
                    <div class="panel-body text-center">
                        <div id="hbC3gauge"></div>
                    </div>
                </div>
            </div>
            <!-- //금일 접속한 총 방문수 -->

            <div class="col-lg-12 col-sm-6">
                <!-- 평균페이지뷰 -->
                <div class="dashboard-widget">
                    <div class="row">
                        <div class="col-xs-6 col-sm-12 col-lg-6 md-mb20 xs-mb0">
                            <div class="widget-icon bg-success pull-left">
                                <i class="ti-layout-media-center-alt"></i>
                            </div>
                            <div class="widget-body">
                                <div class="title">9.52</div>
                                <div class="comment">평균 페이지뷰</div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-12 col-lg-6">
                            <div class="widget-icon bg-info pull-left">
                                <i class="ti-timer"></i>
                            </div>
                            <div class="widget-body">
                                <div class="title num-webfont">04:12</div>
                                <div class="comment">평균 체류시간</div>
                            </div>
                        </div>
                        <div
                                class="col-xs-6 col-sm-12 col-lg-6 md-mt20 hidden-lg hidden-xs">
                            <div class="widget-icon bg-primary pull-left">
                                <i class="ti-settings"></i>
                            </div>
                            <div class="widget-body">
                                <div class="title num-webfont">324,850</div>
                                <div class="comment">전체 방문자 수</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //평균페이지뷰 -->
            </div>
        </div>
    </div>
</html>
