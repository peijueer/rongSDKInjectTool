.class Lcom/iqiyigame/BasePlatform$3;
.super Ljava/lang/Object;
.source "BasePlatform.java"

# interfaces
.implements Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/BasePlatform;->startPermissionsActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/BasePlatform;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/iqiyigame/BasePlatform;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/BasePlatform;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/iqiyigame/BasePlatform$3;->this$0:Lcom/iqiyigame/BasePlatform;

    iput-object p2, p0, Lcom/iqiyigame/BasePlatform$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllow()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/iqiyigame/BasePlatform$3;->this$0:Lcom/iqiyigame/BasePlatform;

    iget-object v1, p0, Lcom/iqiyigame/BasePlatform$3;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iqiyigame/BasePlatform;->handleDownload(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onDeny()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/iqiyigame/BasePlatform$3;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getUnPermissionString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    sget-object v0, Lcom/iqiyigame/BasePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/iqiyigame/BasePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getUnPermissionString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iqiyi/sdk/platform/GamePlatformInitListener;->onFail(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method
