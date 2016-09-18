package com.platform.tasktest;

import com.platform.plugin.ITask;

/**
 * Created by admin on 2016-09-18.
 */
public class MyTask2 implements ITask {

    @Override
    public void stop() {

    }

    @Override
    public void run() {
        System.out.println("我的测试task2");
    }
}
