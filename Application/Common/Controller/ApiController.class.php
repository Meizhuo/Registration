<?php
namespace Common\Controller;


use Think\Controller;

/**
 * 接口通用控制器
 * @package Common\Controller
 */
class ApiController extends Controller {

    public function _initialize() {

    }


    /**
     * 对应控制器下没有方法就会执行该方法
     */
    protected function _empty() {
        if (file_exists_case($this->view->parseTemplate())) {
            // 检查是否存在默认模版 如果有直接输出模版
            $this->display();
        } else {
            $this->ajaxReturn(mz_json_error("No interface for this."));
        }
    }

    /**
     * 需要Get的字段
     * @param array $require_data
     * @return $this
     */
    public function reqGet(array $require_data = null) {
        if ($require_data) {
            foreach ($require_data as $key) {
                $_k = I('get.' . $key, null);
                if (is_null($_k)) {
                    $this->ajaxReturn(mz_json_error("require params: " . $key));
                }
            }
        }
        return $this;
    }

    /**
     * 需要Post的字段
     * @param array $require_data
     * @return \Common\Controller\BaseController
     */
    protected function reqPost(array $require_data = null) {
        if (!IS_POST) {
            $this->ajaxReturn(mz_json_error_request());
        }
        if ($require_data) {
            foreach ($require_data as $key) {
                $_k = I('post.' . $key, null);
                if (is_null($_k)) {
                    $this->ajaxReturn(mz_json_error("require params: " . $key));
                }
            }
        }
        return $this;
    }
} 