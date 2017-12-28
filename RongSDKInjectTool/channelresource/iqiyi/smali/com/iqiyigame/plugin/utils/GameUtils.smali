.class public Lcom/iqiyigame/plugin/utils/GameUtils;
.super Ljava/lang/Object;
.source "GameUtils.java"


# static fields
.field public static final REQUEST_CODE_ASK_PERMISSIONS:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "DLUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 226
    if-eqz p0, :cond_0

    .line 228
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getActivityType(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    .line 199
    .local v0, "activityType":I
    :try_start_0
    const-class v2, Lcom/iqiyigame/plugin/GameBasePluginActivity;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    const/4 v0, 0x1

    move v1, v0

    .line 217
    .end local v0    # "activityType":I
    .local v1, "activityType":I
    :goto_0
    return v1

    .line 203
    .end local v1    # "activityType":I
    .restart local v0    # "activityType":I
    :catch_0
    move-exception v2

    .line 208
    :cond_0
    :try_start_1
    const-class v2, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_1

    .line 209
    const/4 v0, 0x2

    move v1, v0

    .line 210
    .end local v0    # "activityType":I
    .restart local v1    # "activityType":I
    goto :goto_0

    .line 212
    .end local v1    # "activityType":I
    .restart local v0    # "activityType":I
    :catch_1
    move-exception v2

    :cond_1
    move v1, v0

    .line 217
    .end local v0    # "activityType":I
    .restart local v1    # "activityType":I
    goto :goto_0
.end method

.method private static getActivityType(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 183
    const/4 v0, -0x1

    .line 186
    .local v0, "activityType":I
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 187
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameUtils;->getActivityType(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 192
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v0

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilepath"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 115
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0, p1}, Lcom/iqiyigame/plugin/utils/GameUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 116
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 117
    const/4 v3, 0x0

    .line 127
    :goto_0
    return-object v3

    .line 121
    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 122
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 123
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 124
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 127
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method public static getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilepath"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 132
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0, p1}, Lcom/iqiyigame/plugin/utils/GameUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 133
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 134
    const/4 v3, 0x0

    .line 144
    :goto_0
    return-object v3

    .line 138
    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 139
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 140
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 141
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 144
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilepath"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 51
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 53
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProxyViewAction(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/iqiyigame/plugin/utils/GameUtils;->getActivityType(Ljava/lang/Class;)I

    move-result v0

    .line 154
    .local v0, "activityType":I
    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameUtils;->getProxyViewActionByActivityType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProxyViewAction(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/iqiyigame/plugin/utils/GameUtils;->getActivityType(Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v0

    .line 149
    .local v0, "activityType":I
    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameUtils;->getProxyViewActionByActivityType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getProxyViewActionByActivityType(I)Ljava/lang/String;
    .locals 3
    .param p0, "activityType"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "proxyViewAction":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 175
    :goto_0
    if-nez v0, :cond_0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLUtilsunsupported activityType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameLog;->log_e(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-object v0

    .line 162
    :pswitch_0
    const-string v0, "com.ppsgame.proxy.activity.VIEW"

    .line 163
    goto :goto_0

    .line 166
    :pswitch_1
    const-string v0, "com.ppsgame.proxy.fragmentactivity.VIEW"

    .line 167
    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSourceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "zConfig/pps_packetid.properties"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 82
    .local v4, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 83
    .local v5, "properties":Ljava/util/Properties;
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 84
    const-string v8, "qudaoId"

    const-string v9, "pps_test"

    invoke-virtual {v5, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "channel":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 87
    const-string v8, "channel"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 89
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "channel_id"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "temp":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 91
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "channelList":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 95
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v8, "channel_id"

    invoke-interface {v3, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    .end local v0    # "channel":Ljava/lang/String;
    .end local v1    # "channelList":[Ljava/lang/String;
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "properties":Ljava/util/Properties;
    .end local v6    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v7    # "temp":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 98
    .restart local v0    # "channel":Ljava/lang/String;
    .restart local v1    # "channelList":[Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v6    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_0
    move-object v0, v7

    goto :goto_0

    .line 101
    .end local v1    # "channelList":[Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 102
    .restart local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v8, "channel_id"

    invoke-interface {v3, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0    # "channel":Ljava/lang/String;
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "properties":Ljava/util/Properties;
    .end local v6    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v7    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    const-string v0, ""

    goto :goto_0
.end method

.method public static hasReadPhonePermission(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 266
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, "hasReadPhonePermission":I
    if-eqz v0, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 270
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hasWriteContactsPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 258
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "hasWriteContactsPermission":I
    if-eqz v0, :cond_0

    .line 260
    const/4 v1, 0x0

    .line 262
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 223
    return-void
.end method

.method public static showMessageOKCancel(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "okListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 249
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    .line 251
    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 255
    return-void
.end method

.method public static stringToEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 67
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 65
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 66
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writePermission(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "permissionString"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 238
    .local v0, "hasWriteContactsPermission":I
    if-eqz v0, :cond_0

    .line 239
    invoke-static {p0, p2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, v1, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 246
    :cond_0
    return-void
.end method
