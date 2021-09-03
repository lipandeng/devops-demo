package icu.climber.demo.devopsjenkins.service;

import icu.climber.demo.devopsjenkins.model.News;
import icu.climber.demo.devopsjenkins.model.NewsExample;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description 新闻类相关
 * @Created by lipandeng on 2021/9/3
 */
public interface NewsService {

    /**
     * 新闻列表
     * @param pageIndex
     * @param pageSize
     * @return
     */
   List<News> newsList(int pageIndex,int pageSize);
}
