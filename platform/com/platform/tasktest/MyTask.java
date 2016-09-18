package com.platform.tasktest;

import com.platform.plugin.ITask;
import com.platform.tools.ToolDateTime;

import java.util.Date;

/**
 * Created by admin on 2016-09-18.
 */
public class MyTask implements ITask {

    @Override
    public void run() {
        // 这里放被执行的调试任务代码
        System.out.println("hjw,测试代码执行"+ ToolDateTime.format(new Date(),"yyyy-MM-dd HH:mm:ss"));
    }

    @Override
    public void stop() {

        // 这里的代码会在 task 被关闭前调用
    }
}
