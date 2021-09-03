package icu.climber.demo.devopsjenkins.service.impl;

import com.github.pagehelper.PageHelper;
import icu.climber.demo.devopsjenkins.mapper.NewsMapper;
import icu.climber.demo.devopsjenkins.model.News;
import icu.climber.demo.devopsjenkins.model.NewsExample;
import icu.climber.demo.devopsjenkins.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description
 * @Created by lipandeng on 2021/9/3
 */
@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public List<News> newsList(int pageIndex, int pageSize) {
        PageHelper.startPage(pageIndex,pageSize);
        NewsExample newsExample = new NewsExample();
        newsExample.setOrderByClause("created_at desc");


        return newsMapper.selectByExample(newsExample);
    }
}
