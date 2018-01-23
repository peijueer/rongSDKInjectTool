.class public Lcom/muzhiwan/sdk/common/utils/TaskManagerUtils;
.super Ljava/lang/Object;
.source "TaskManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callQQ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qq"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v1, "com.tencent.mobileqq"

    invoke-static {p0, v1}, Lcom/muzhiwan/sdk/common/utils/TaskManagerUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "localUri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    .end local v0    # "localUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 128
    .restart local v0    # "localUri":Landroid/net/Uri;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&version=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    .end local v0    # "localUri":Landroid/net/Uri;
    :cond_1
    const-string v1, "QQ\u672a\u5b89\u88c5\u6216\u7248\u672c\u4e0d\u88ab\u652f\u6301"

    invoke-static {p0, v1}, Lcom/muzhiwan/sdk/common/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCurrentPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v4, 0x0

    .line 79
    .local v4, "currentInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v6, 0x0

    .line 80
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x2

    .line 81
    .local v0, "START_TASK_TO_FRONT":I
    const/4 v7, 0x0

    .line 83
    .local v7, "pkgName":Ljava/lang/String;
    :try_start_0
    const-class v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v10, "processState"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 87
    :goto_0
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 88
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 90
    .local v2, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0x64

    if-ne v10, v11, :cond_0

    .line 91
    const/4 v8, 0x0

    .line 93
    .local v8, "state":Ljava/lang/Integer;
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 97
    :goto_1
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v0, :cond_0

    .line 98
    move-object v4, v2

    .line 103
    .end local v2    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "state":Ljava/lang/Integer;
    :cond_1
    if-eqz v4, :cond_2

    .line 104
    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 106
    :cond_2
    return-object v7

    .line 84
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v5

    .line 85
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "am":Landroid/app/ActivityManager;
    .restart local v2    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v8    # "state":Ljava/lang/Integer;
    :catch_1
    move-exception v5

    .line 95
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getTopActName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v0, ""

    .line 39
    .local v0, "activityName":Ljava/lang/String;
    const-string v6, "android.permission.GET_TASKS"

    invoke-static {p0, v6}, Lcom/muzhiwan/sdk/common/utils/TaskManagerUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 40
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 41
    .local v4, "manager":Landroid/app/ActivityManager;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 42
    .local v5, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v5, :cond_1

    .line 43
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    .local v2, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "currentPackageName":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-le v6, v7, :cond_0

    .line 47
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/TaskManagerUtils;->getCurrentPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 50
    .local v3, "isTop":Z
    if-eqz v3, :cond_1

    .line 51
    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .end local v1    # "currentPackageName":Ljava/lang/String;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "isTop":Z
    .end local v4    # "manager":Landroid/app/ActivityManager;
    .end local v5    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    return-object v0
.end method

.method public static getTopPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v2, ""

    .line 61
    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "android.permission.GET_TASKS"

    invoke-static {p0, v4}, Lcom/muzhiwan/sdk/common/utils/TaskManagerUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 63
    .local v1, "manager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    .line 65
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 68
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-le v4, v5, :cond_0

    .line 69
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/TaskManagerUtils;->getCurrentPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .end local v0    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v1    # "manager":Landroid/app/ActivityManager;
    .end local v3    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    return-object v2
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPermission"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 25
    .local v0, "array":[Ljava/lang/String;
    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 26
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 27
    const/4 v3, 0x1

    .line 33
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 25
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "string":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "string":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 111
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 112
    .local v3, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "pName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 115
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 116
    .local v4, "pn":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    .end local v4    # "pn":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method
