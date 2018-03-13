.class Lcom/zqhy/sdk/platform/ZqSDKApi$8;
.super Lcom/lzy/okhttpserver/listener/DownloadListener;
.source "ZqSDKApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->fileDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iput-object p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/lzy/okhttpserver/listener/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okhttpserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 605
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->dismiss()V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->val$mContext:Landroid/content/Context;

    const-string v1, "\u4e0b\u8f7d\u5b89\u88c5\u5305\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 610
    return-void
.end method

.method public onFinish(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 2

    .prologue
    .line 596
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->val$mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/zqhy/sdk/utils/a;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 598
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->dismiss()V

    .line 601
    :cond_0
    return-void
.end method

.method public onProgress(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 574
    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 575
    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getDownloadLength()J

    .line 576
    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTotalLength()J

    .line 577
    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getProgress()F

    move-result v0

    .line 578
    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getNetworkSpeed()J

    .line 579
    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v1, v1, Lcom/zqhy/sdk/platform/ZqSDKApi;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 580
    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v1, v1, Lcom/zqhy/sdk/platform/ZqSDKApi;->progressBar:Landroid/widget/ProgressBar;

    mul-float v2, v0, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 581
    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v1, v1, Lcom/zqhy/sdk/platform/ZqSDKApi;->tvProgress:Lcom/zqhy/sdk/ui/NumberProgressView;

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->setProgress(I)V

    .line 590
    :cond_0
    return-void
.end method
