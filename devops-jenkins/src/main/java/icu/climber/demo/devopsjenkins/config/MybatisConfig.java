package icu.climber.demo.devopsjenkins.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

/**
 * @Description mybatis 配置配置类
 * @Created by lipandeng on 2021/8/19
 */
@Configuration
@MapperScan("icu.climber.demo.devopsjenkins.mapper")
public class MybatisConfig {

}
