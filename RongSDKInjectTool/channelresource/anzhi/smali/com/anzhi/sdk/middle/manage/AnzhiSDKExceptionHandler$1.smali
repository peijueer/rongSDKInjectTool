.class Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;
.super Ljava/lang/Object;
.source "AnzhiSDKExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->handleException(Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

.field private final synthetic val$ex:Ljava/lang/Throwable;

.field private final synthetic val$forceExit:Z


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;ZLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    iput-boolean p2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->val$forceExit:Z

    iput-object p3, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->val$ex:Ljava/lang/Throwable;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 101
    :try_start_0
    new-instance v24, Ljava/io/StringWriter;

    invoke-direct/range {v24 .. v24}, Ljava/io/StringWriter;-><init>()V

    .line 102
    .local v24, "sw":Ljava/io/StringWriter;
    new-instance v20, Ljava/io/PrintWriter;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 103
    .local v20, "pw":Ljava/io/PrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->val$ex:Ljava/lang/Throwable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v27, v0

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->getExceptionPath()Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Ljava/lang/String;

    move-result-object v17

    .line 105
    .local v17, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v27, "rw"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v10, "file":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->val$ex:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->isExistsException(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)Z
    invoke-static {v0, v1, v10}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$1(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v27

    if-eqz v27, :cond_1

    .line 191
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->val$forceExit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->killProcess(I)V

    .line 194
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v17    # "path":Ljava/lang/String;
    .end local v20    # "pw":Ljava/io/PrintWriter;
    .end local v24    # "sw":Ljava/io/StringWriter;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v20    # "pw":Ljava/io/PrintWriter;
    .restart local v24    # "sw":Ljava/io/StringWriter;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v27, v0

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v28, v0

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/anzhi/plugin/loader/PluginManager;->getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v28

    const-string v29, "com.anzhi.usercenter.plugin"

    invoke-virtual/range {v28 .. v29}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 112
    const/16 v29, 0x80

    .line 110
    invoke-virtual/range {v27 .. v29}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 113
    .local v18, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0

    .line 114
    .local v19, "pluginVr":I
    :goto_1
    const-string v9, "1"

    .line 115
    .local v9, "exceptionVer":Ljava/lang/String;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v27, :cond_2

    .line 117
    :try_start_2
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 118
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 119
    const-string v27, "exception_ver"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    .line 120
    .local v26, "value":Ljava/lang/Object;
    if-eqz v26, :cond_2

    .line 121
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 128
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v26    # "value":Ljava/lang/Object;
    :cond_2
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v27, v0

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v28, v0

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v18

    .line 133
    :goto_3
    const/4 v4, 0x0

    .line 135
    .local v4, "channel":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v27, v0

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    const-string v28, "anzhikey"

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 136
    .local v16, "is":Ljava/io/InputStream;
    if-eqz v16, :cond_4

    .line 137
    new-instance v6, Ljava/io/DataInputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 138
    .local v6, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 139
    if-eqz v4, :cond_3

    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 142
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .end local v16    # "is":Ljava/io/InputStream;
    :cond_4
    :goto_4
    if-eqz v18, :cond_a

    :try_start_5
    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 147
    .local v11, "gameVr":Ljava/lang/String;
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v27, v0

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->getTime()Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$3(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Ljava/lang/String;

    move-result-object v25

    .line 149
    .local v25, "time":Ljava/lang/String;
    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 150
    .local v21, "release":Ljava/lang/String;
    if-nez v21, :cond_5

    .line 151
    const-string v21, ""

    .line 153
    :cond_5
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v27, "GAME_PACKAGE="

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v28, v0

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v27, "GAME_VR="

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v27, "JAR_VR="

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0xfa3

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v27, "PLUGIN_VR="

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v27, "OS_SDK="

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v27, v0

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    move-object/from16 v28, v0

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 160
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    .line 161
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 162
    .local v23, "sourceDir":Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 163
    const-string v27, "GAME_MD5="

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .end local v23    # "sourceDir":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getCpInfoInner()Lcom/anzhi/sdk/middle/manage/CPInfo;

    move-result-object v5

    .line 166
    .local v5, "cpInfo":Lcom/anzhi/sdk/middle/manage/CPInfo;
    if-eqz v5, :cond_7

    .line 167
    const-string v27, "APP_KEY="

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Lcom/anzhi/sdk/middle/manage/CPInfo;->getAppKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_7
    if-eqz v4, :cond_8

    .line 170
    const-string v27, ", "

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "CHANNEL="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_8
    const-string v27, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "#"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->hashCode()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 175
    .local v14, "hashCode":[B
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 176
    .local v15, "header":[B
    invoke-virtual/range {v24 .. v24}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 177
    .local v8, "errInfos":[B
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "*"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v15

    move/from16 v28, v0

    array-length v0, v8

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    .line 179
    .local v22, "skipLen":[B
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 180
    .local v12, "fileLen":J
    array-length v0, v14

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v28, v28, v12

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    array-length v0, v15

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 181
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 183
    invoke-virtual {v10, v14}, Ljava/io/RandomAccessFile;->write([B)V

    .line 184
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 185
    invoke-virtual {v10, v15}, Ljava/io/RandomAccessFile;->write([B)V

    .line 186
    invoke-virtual {v10, v8}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->val$forceExit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 113
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "channel":Ljava/lang/String;
    .end local v5    # "cpInfo":Lcom/anzhi/sdk/middle/manage/CPInfo;
    .end local v8    # "errInfos":[B
    .end local v9    # "exceptionVer":Ljava/lang/String;
    .end local v11    # "gameVr":Ljava/lang/String;
    .end local v12    # "fileLen":J
    .end local v14    # "hashCode":[B
    .end local v15    # "header":[B
    .end local v19    # "pluginVr":I
    .end local v21    # "release":Ljava/lang/String;
    .end local v22    # "skipLen":[B
    .end local v25    # "time":Ljava/lang/String;
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 129
    .restart local v9    # "exceptionVer":Ljava/lang/String;
    .restart local v19    # "pluginVr":I
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 146
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "channel":Ljava/lang/String;
    :cond_a
    :try_start_6
    const-string v11, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 188
    .end local v4    # "channel":Ljava/lang/String;
    .end local v9    # "exceptionVer":Ljava/lang/String;
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "pluginVr":I
    .end local v20    # "pw":Ljava/io/PrintWriter;
    .end local v24    # "sw":Ljava/io/StringWriter;
    :catch_1
    move-exception v7

    .line 189
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v27, "Anzhi_sdk_lib"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 191
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->val$forceExit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 190
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v27

    .line 191
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;->val$forceExit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 192
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/os/Process;->killProcess(I)V

    .line 193
    :cond_b
    throw v27

    .line 144
    .restart local v4    # "channel":Ljava/lang/String;
    .restart local v9    # "exceptionVer":Ljava/lang/String;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v19    # "pluginVr":I
    .restart local v20    # "pw":Ljava/io/PrintWriter;
    .restart local v24    # "sw":Ljava/io/StringWriter;
    :catch_2
    move-exception v27

    goto/16 :goto_4

    .line 124
    .end local v4    # "channel":Ljava/lang/String;
    :catch_3
    move-exception v27

    goto/16 :goto_2
.end method
