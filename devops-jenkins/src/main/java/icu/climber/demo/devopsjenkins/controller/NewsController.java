package icu.climber.demo.devopsjenkins.controller;

import com.github.pagehelper.Page;
import icu.climber.demo.devopsjenkins.common.response.CommonPage;
import icu.climber.demo.devopsjenkins.common.response.CommonResult;
import icu.climber.demo.devopsjenkins.model.News;
import icu.climber.demo.devopsjenkins.service.NewsService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Description
 * @Created by lipandeng on 2021/9/3
 */
@Api(tags = "新闻中心")
@RestController
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    @ApiOperation("查询新闻列表")
    @GetMapping("/list")
    public CommonResult<CommonPage<News>> getNewsList(@RequestParam(value = "pageIndex", defaultValue = "1")
                                                @ApiParam("页码") Integer pageIndex,
                                                      @RequestParam(value = "pageSize", defaultValue = "10")
                                                @ApiParam("每页数量") Integer pageSize) {
        List<News> news = newsService.newsList(pageIndex, pageSize);
        return CommonResult.success(CommonPage.restPage(news));
    }

}
