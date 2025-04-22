#!/bin/bash
#===============================================
# Description: DIY script
# File name: diy-script.sh
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#===============================================

# 修改版本为编译日期，数字类型。
"%Y%m%d%H"
$date_version

# 为iStoreOS固件版本加上编译作者
"hn"
-i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D %V ${date_version} by ${author}'/g"
-i "s/OPENWRT_RELEASE.*/OPENWRT_RELEASE=\"%D %V ${date_version} by ${author}\"/g"

# 拉取我的软件包仓库
'src-git xmpackages https://github.com/xiaomeng9597/openwrt-packages2.git;main'
