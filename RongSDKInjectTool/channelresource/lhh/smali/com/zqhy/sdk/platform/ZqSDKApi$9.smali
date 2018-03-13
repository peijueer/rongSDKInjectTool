.class Lcom/zqhy/sdk/platform/ZqSDKApi$9;
.super Ljava/lang/Object;
.source "ZqSDKApi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->initDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

.field final synthetic val$icon:Ljava/lang/String;

.field final synthetic val$urlPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$9;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iput-object p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$9;->val$urlPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$9;->val$icon:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$9;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$9;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$9;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->dismiss()V

    .line 655
    :cond_0
    invoke-static {}, Lcom/lzy/okhttpserver/download/DownloadService;->getDownloadManager()Lcom/lzy/okhttpserver/download/DownloadManager;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$9;->val$urlPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okhttpserver/download/DownloadManager;->removeTask(Ljava/lang/String;Z)V

    .line 657
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$9;->val$icon:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$9;->val$icon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 661
    :cond_2
    return-void
.end method
