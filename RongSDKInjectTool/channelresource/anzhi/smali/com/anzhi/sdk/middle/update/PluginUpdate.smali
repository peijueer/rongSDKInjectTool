.class public Lcom/anzhi/sdk/middle/update/PluginUpdate;
.super Ljava/lang/Object;
.source "PluginUpdate.java"


# static fields
.field public static final STATE_DOWNLOADED:I = 0x5

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x3

.field public static final STATE_WAITING:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJarVc:I

.field private mOldPluginMd5:Ljava/lang/String;

.field private mOldPluginVc:I

.field private mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

.field private mPluginPkg:Ljava/lang/String;

.field private mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jarVc"    # I
    .param p3, "pluginPkgName"    # Ljava/lang/String;
    .param p4, "oldPluginVC"    # I
    .param p5, "oldPluginMd5"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;

    .line 73
    iput p2, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mJarVc:I

    .line 74
    iput-object p3, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mPluginPkg:Ljava/lang/String;

    .line 75
    iput p4, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mOldPluginVc:I

    .line 76
    iput-object p5, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mOldPluginMd5:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/anzhi/plugin/loader/PluginManager;->getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/update/PluginUpdate;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/anzhi/sdk/middle/update/PluginUpdate;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mJarVc:I

    return v0
.end method

.method static synthetic access$2(Lcom/anzhi/sdk/middle/update/PluginUpdate;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mOldPluginVc:I

    return v0
.end method

.method static synthetic access$3(Lcom/anzhi/sdk/middle/update/PluginUpdate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mOldPluginMd5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/anzhi/sdk/middle/update/PluginUpdate;)Lcom/anzhi/sdk/middle/update/UpdateInfo;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    return-object v0
.end method

.method private checkPluginFile(Lcom/anzhi/sdk/middle/update/UpdateInfo;Landroid/content/Context;)Z
    .locals 23
    .param p1, "updateInfo"    # Lcom/anzhi/sdk/middle/update/UpdateInfo;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 161
    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->isSDCardAvailable()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 162
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Download/azuc_plugin_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getVersionCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 163
    .local v17, "pluginPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v8, "f":Ljava/io/File;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 165
    :cond_0
    const/16 v20, 0x0

    .line 225
    .end local v8    # "f":Ljava/io/File;
    .end local v17    # "pluginPath":Ljava/lang/String;
    :goto_0
    return v20

    .line 167
    .restart local v8    # "f":Ljava/io/File;
    .restart local v17    # "pluginPath":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    .line 168
    .local v13, "md5":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 169
    const/16 v20, 0x0

    goto :goto_0

    .line 172
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "sdcard exists plugin file md5="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", online plugin md5="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getMD5()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/anzhi/sdk/middle/util/LogUtils;->i(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getMD5()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 175
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 176
    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 177
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 178
    .local v14, "metaData":Landroid/os/Bundle;
    if-eqz v14, :cond_3

    .line 179
    const-string v20, "support_ver"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 180
    .local v19, "supportVer":I
    const-string v20, "Anzhi_sdk_lib"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "supportVer="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 182
    const-string v20, "Anzhi_sdk_lib"

    const-string v21, "SD\u5361\u4e2d\u7684\u63d2\u4ef6\u4e0eJAR\u6240\u652f\u6301\u7684\u517c\u5bb9\u7248\u672c\u53f7\u4e0d\u7edf\u4e00!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 187
    .end local v14    # "metaData":Landroid/os/Bundle;
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "supportVer":I
    :catch_0
    move-exception v7

    .line 188
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 189
    invoke-static {v7}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 191
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    move-object/from16 v20, v0

    const-string v21, "com.anzhi.usercenter.plugin"

    invoke-virtual/range {v20 .. v21}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 192
    .local v11, "insidePath":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v15, "old":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 194
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 197
    :cond_4
    new-instance v18, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v18, "srcFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    move-object/from16 v20, v0

    const-string v21, "com.anzhi.usercenter.plugin"

    invoke-virtual/range {v20 .. v21}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v5, "desFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 200
    const-string v20, "copy SD plugin to cache start!"

    invoke-static/range {v20 .. v20}, Lcom/anzhi/sdk/middle/util/LogUtils;->d(Ljava/lang/String;)V

    .line 201
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    move-object/from16 v20, v0

    const-string v21, "com.anzhi.usercenter.plugin"

    invoke-virtual/range {v20 .. v21}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginDexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v6, "dexFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v4

    .line 203
    .local v4, "delOk":Z
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "del old dex file: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/anzhi/sdk/middle/util/LogUtils;->d(Ljava/lang/String;)V

    .line 205
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 206
    .local v9, "fis":Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 207
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/16 v20, 0x1000

    move/from16 v0, v20

    new-array v3, v0, [B

    .line 208
    .local v3, "buffer":[B
    const/4 v12, 0x0

    .line 209
    .local v12, "len":I
    :goto_1
    invoke-virtual {v9, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_5

    .line 212
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 213
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 214
    const-string v20, "copy SD plugin to cache complete!"

    invoke-static/range {v20 .. v20}, Lcom/anzhi/sdk/middle/util/LogUtils;->d(Ljava/lang/String;)V

    .line 218
    .end local v3    # "buffer":[B
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "len":I
    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 210
    .restart local v3    # "buffer":[B
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "len":I
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v3, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 215
    .end local v3    # "buffer":[B
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "len":I
    :catch_1
    move-exception v7

    .line 216
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 223
    .end local v4    # "delOk":Z
    .end local v5    # "desFile":Ljava/io/File;
    .end local v6    # "dexFile":Ljava/io/File;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "insidePath":Ljava/lang/String;
    .end local v15    # "old":Ljava/io/File;
    .end local v18    # "srcFile":Ljava/io/File;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 225
    .end local v8    # "f":Ljava/io/File;
    .end local v13    # "md5":Ljava/lang/String;
    .end local v17    # "pluginPath":Ljava/lang/String;
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method private getPluginUpdatedVer()I
    .locals 4

    .prologue
    .line 263
    iget-object v1, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;

    const-string v2, "azuc_config.xml"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 264
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "plugin_update_ver"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private submitPluginDownState(I)V
    .locals 1
    .param p1, "pluginInvalid"    # I

    .prologue
    .line 253
    new-instance v0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;-><init>(Lcom/anzhi/sdk/middle/update/PluginUpdate;I)V

    .line 259
    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->start()V

    .line 260
    return-void
.end method


# virtual methods
.method public checkPluginUpdate()I
    .locals 18

    .prologue
    .line 95
    const/16 v16, -0x1

    .line 97
    .local v16, "responseInvalid":I
    const/4 v15, 0x0

    .line 98
    .local v15, "pluginExists":I
    const/4 v11, 0x1

    .line 99
    .local v11, "connFailed":I
    const/16 v17, 0x2

    .line 100
    .local v17, "unForceUpdate":I
    const/4 v13, 0x3

    .line 102
    .local v13, "forceUpdate":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 104
    .local v8, "timestamp":J
    new-instance v2, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mJarVc:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mOldPluginVc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mOldPluginMd5:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v9}, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;-><init>(Landroid/content/Context;IILjava/lang/String;ZJ)V

    .line 105
    .local v2, "p":Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;
    invoke-virtual {v2}, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->request()I

    move-result v10

    .line 106
    .local v10, "code":I
    const/16 v3, 0xc8

    if-ne v10, v3, :cond_6

    .line 108
    :try_start_0
    invoke-virtual {v2}, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    if-nez v3, :cond_0

    .line 110
    const/4 v3, 0x1

    .line 145
    :goto_0
    return v3

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getClientTimestamp()J

    move-result-wide v4

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    .line 113
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->submitPluginDownState(I)V

    .line 114
    const/4 v3, -0x1

    goto :goto_0

    .line 116
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->checkPluginFile(Lcom/anzhi/sdk/middle/update/UpdateInfo;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->submitPluginDownState(I)V

    .line 118
    const/4 v3, 0x0

    goto :goto_0

    .line 120
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->getPluginUpdatedVer()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    invoke-virtual {v4}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getVersionCode()I

    move-result v4

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isForceUpdate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    const-string v3, "Anzhi_sdk_lib"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Plugin is updated!! ver: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    invoke-virtual {v5}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getVersionCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v3, 0x1

    goto :goto_0

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/anzhi/sdk/middle/net/Connectivity;->getInstance(Landroid/content/Context;)Lcom/anzhi/sdk/middle/net/Connectivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/net/Connectivity;->isMobileConnected()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isForceUpdate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 126
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setSilent(Z)V

    .line 127
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;

    const-class v4, Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    invoke-direct {v14, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    const-string v3, "EXTRA_INFO"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    const-string v3, "EXTRA_SWITCH"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const-string v3, "EXTRA_SWITCH_ACTIVITY"

    const-string v4, "PLUGIN_UPDATE_ACTIVITY"

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isForceUpdate()Z

    move-result v3

    if-nez v3, :cond_7

    .line 137
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 134
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mPluginPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->download(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v12

    .line 142
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 145
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 139
    :cond_7
    const/4 v3, 0x3

    goto/16 :goto_0
.end method

.method public download(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V
    .locals 11
    .param p1, "updateInfo"    # Lcom/anzhi/sdk/middle/update/UpdateInfo;
    .param p2, "pluginPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 149
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    .line 150
    const-string v1, "updatePlugin"

    .line 151
    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v8

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v9

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v10

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 152
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 153
    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 154
    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getVersionCode()I

    move-result v4

    neg-int v4, v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v8

    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getDownUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 155
    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isDeltaUpdate()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getDeltaurl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 156
    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getDeltasize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 157
    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getMD5()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isForceUpdate()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    aput-object p0, v3, v4

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public getUpdateInfo()Lcom/anzhi/sdk/middle/update/UpdateInfo;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;

    return-object v0
.end method

.method public onDownloadCreated(J)V
    .locals 0
    .param p1, "aid"    # J
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 237
    return-void
.end method

.method public onDownloadDeleted(J)V
    .locals 0
    .param p1, "aid"    # J
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method public onDownloadProgressed(JJJ)V
    .locals 0
    .param p1, "aid"    # J
    .param p3, "downloadedBytes"    # J
    .param p5, "appSize"    # J
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 246
    return-void
.end method

.method public onDownloadStateChanged(JI)V
    .locals 0
    .param p1, "aid"    # J
    .param p3, "newState"    # I
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 242
    return-void
.end method

.method protected pausePluginDownload(J)V
    .locals 7
    .param p1, "aid"    # J

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "pauseUpdatePlugin"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    .line 231
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    .line 230
    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method
