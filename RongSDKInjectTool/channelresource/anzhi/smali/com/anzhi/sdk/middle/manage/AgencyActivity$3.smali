.class Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;
.super Ljava/lang/Thread;
.source "AgencyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AgencyActivity;->submitPluginDownState(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

.field private final synthetic val$newPluginMd5:Ljava/lang/String;

.field private final synthetic val$newPluginVc:I

.field private final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    iput p2, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->val$newPluginVc:I

    iput-object p3, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->val$newPluginMd5:Ljava/lang/String;

    iput p4, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->val$state:I

    .line 434
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 437
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 439
    .local v8, "manager":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/loader/PluginManager;->getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v0

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 438
    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 440
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, -0x1

    .line 441
    .local v3, "versionCode":I
    const/4 v4, 0x0

    .line 442
    .local v4, "md5Str":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 443
    iget v3, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 444
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    invoke-virtual {v1}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/plugin/loader/PluginManager;->getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v1

    .line 445
    const-string v2, "com.anzhi.usercenter.plugin"

    invoke-virtual {v1, v2}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 446
    const-string v0, "Anzhi_sdk_lib"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local plugin version code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", md5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    new-instance v0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    const/16 v2, 0xfa3

    .line 449
    iget v5, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->val$newPluginVc:I

    iget-object v6, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->val$newPluginMd5:Ljava/lang/String;

    iget v7, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$3;->val$state:I

    .line 448
    invoke-direct/range {v0 .. v7}, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;-><init>(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I)V

    .line 449
    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->request()I

    .line 450
    return-void
.end method
